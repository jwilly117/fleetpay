import admin from 'firebase-admin';

const { Buffer } = require('buffer');


export async function uploadFile(fileName: string, fileContent: string): Promise<string> {
    const bucket = admin.storage().bucket('fleetpay-b9f98.appspot.com');
    const type = fileContent.split(';')[0].split('/')[1];

    console.log('Uploading file to storage bucket');
    // Convert Base64 string to Buffer
    const buffer = Buffer.from(fileContent.split(',')[1], 'base64');

    // Create a file reference
    const file = bucket.file(fileName + '.' + type);

    // Upload the buffer to the file
    await file.save(buffer, {
        metadata: {
            contentType: `image/${type}`,
        },
        public: true,
    });

    console.log('File uploaded successfully');

    // Get the public URL
    return file.publicUrl()
}