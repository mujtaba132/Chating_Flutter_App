const {onDocumentCreated} = require("firebase-functions/v2/firestore");
const {initializeApp} = require("firebase-admin/app");
const {getFirestore} = require("firebase-admin/firestore");
const {getMessaging} = require("firebase-admin/messaging");

initializeApp();

const db = getFirestore();
const messaging = getMessaging();

exports.sendChatNotification = onDocumentCreated(
    "chats/{chatId}/messages/{messageId}",
    async (event) => {
      try {
        console.log("🔥 FUNCTION TRIGGERED");

        console.log("Chat ID:", event.params.chatId);
        console.log("Message ID:", event.params.messageId);

        // Get newly created message
        const messageData = event.data ?
        event.data.data() :
        null;

        if (!messageData) {
          console.log("No message data found.");
          return;
        }

        const senderId = messageData.senderId;
        const receiverId = messageData.receiverId;
        const message = messageData.message;

        // Validate required fields
        if (!senderId || !receiverId || !message) {
          console.log("Required message fields are missing.");
          return;
        }

        // Get receiver document
        const receiverDoc = await db
            .collection("user")
            .doc(receiverId)
            .get();

        if (!receiverDoc.exists) {
          console.log(
              "Receiver does not exist:",
              receiverId,
          );
          return;
        }

        const receiverData = receiverDoc.data();

        // Get FCM token
        const fcmToken = receiverData ?
        receiverData.fcmToken :
        null;

        if (!fcmToken) {
          console.log(
              "Receiver has no FCM token:",
              receiverId,
          );
          return;
        }

        // Send notification
        const response = await messaging.send({
          token: fcmToken,

          notification: {
            title: "New Message",
            body: message,
          },

          data: {
            chatId: event.params.chatId,
            messageId: event.params.messageId,
            senderId: senderId,
            receiverId: receiverId,
          },

          android: {
            notification: {
              channelId: "messaging_channel",
              sound: "default",
            },
          },

          apns: {
            payload: {
              aps: {
                sound: "default",
              },
            },
          },
        });

        console.log(
            "Notification sent successfully:",
            response,
        );

        return;
      } catch (error) {
        console.error(
            "Error sending chat notification:",
            error,
        );

        return;
      }
    },
);
