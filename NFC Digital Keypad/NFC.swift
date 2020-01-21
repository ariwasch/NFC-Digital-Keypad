////
////  NFC.swift
////  NFC Digital Keypad
////
////  Created by Ari Wasch on 12/24/19.
////  Copyright © 2019 Ari Wasch. All rights reserved.
////
//
//import Foundation
//import CoreNFC
//import UIKit
class NFC{
}
//
//    let reuseIdentifier = "reuseIdentifier"
//    var detectedMessages = [NFCNDEFMessage]()
//    var session: NFCNDEFReaderSession?
//
//    @IBAction func beginScanning(_ sender: Any) {
//        guard NFCNDEFReaderSession.readingAvailable else {
//            let alertController = UIAlertController(
//                title: "Scanning Not Supported",
//                message: "This device doesn't support tag scanning.",
//                preferredStyle: .alert
//            )
//            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
//            self.present(alertController, animated: true, completion: nil)
//            return
//        }
//
//        session = NFCNDEFReaderSession(delegate: self, queue: nil, invalidateAfterFirstRead: false)
//        session?.alertMessage = "Hold your iPhone near the item to learn more about it."
//        session?.begin()
//    }
//
//    func readerSession(_ session: NFCNDEFReaderSession, didInvalidateWithError error: Error) {
//        // Check the invalidation reason from the returned error.
//        if let readerError = error as? NFCReaderError {
//            // Show an alert when the invalidation reason is not because of a
//            // successful read during a single-tag read session, or because the
//            // user canceled a multiple-tag read session from the UI or
//            // programmatically using the invalidate method call.
//            if (readerError.code != .readerSessionInvalidationErrorFirstNDEFTagRead)
//                && (readerError.code != .readerSessionInvalidationErrorUserCanceled) {
//                let alertController = UIAlertController(
//                    title: "Session Invalidated",
//                    message: error.localizedDescription,
//                    preferredStyle: .alert
//                )
//                alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
//                DispatchQueue.main.async {
//                    self.present(alertController, animated: true, completion: nil)
//                }
//            }
//        }
//
//        // To read new tags, a new session instance is required.
//        self.session = nil
//    }
//
//    func readerSession(_ session: NFCNDEFReaderSession, didDetect tags: [NFCNDEFTag]) {
//        if tags.count > 1 {
//            // Restart polling in 500ms
//            let retryInterval = DispatchTimeInterval.milliseconds(500)
//            session.alertMessage = "More than 1 tag is detected, please remove all tags and try again."
//            DispatchQueue.global().asyncAfter(deadline: .now() + retryInterval, execute: {
//                session.restartPolling()
//            })
//            return
//        }
//
//        // Connect to the found tag and perform NDEF message reading
//        let tag = tags.first!
//        session.connect(to: tag, completionHandler: { (error: Error?) in
//            if nil != error {
//                session.alertMessage = "Unable to connect to tag."
//                session.invalidate()
//                return
//            }
//
//            tag.queryNDEFStatus(completionHandler: { (ndefStatus: NFCNDEFStatus, capacity: Int, error: Error?) in
//                if .notSupported == ndefStatus {
//                    session.alertMessage = "Tag is not NDEF compliant"
//                    session.invalidate()
//                    return
//                } else if nil != error {
//                    session.alertMessage = "Unable to query NDEF status of tag"
//                    session.invalidate()
//                    return
//                }
//
//                tag.readNDEF(completionHandler: { (message: NFCNDEFMessage?, error: Error?) in
//                    var statusMessage: String
//                    if nil != error || nil == message {
//                        statusMessage = "Fail to read NDEF from tag"
//                    } else {
//                        statusMessage = "Found 1 NDEF message"
//                        DispatchQueue.main.async {
//                            // Process detected NFCNDEFMessage objects.
//                            print(message ?? "poop" )
//                        }
//                    }
//
//                    session.alertMessage = statusMessage
//                    session.invalidate()
//                })
//            })
//        })
//    }
//
//    func readerSession(_ session: NFCNDEFReaderSession, didDetectNDEFs messages: [NFCNDEFMessage]) {
//        DispatchQueue.main.async {
//            // Process detected NFCNDEFMessage objects.
//            print(messages)
//        }
//    }
//
//
//}
//
