package com.nhom8.context;

import com.cloudinary.Cloudinary;

public class CloudinaryUtil {

    public static Cloudinary cloudinary;
    public static Cloudinary getCloudinary() {
        if (cloudinary == null) {
            // Set your Cloudinary credentials

            // Dotenv dotenv = Dotenv.load();
            cloudinary = new Cloudinary("cloudinary://495478988912747:90xd1xw4Ck3qlCaitFDUBMzM4e4@dx8k8cjdq");
            cloudinary.config.secure = true;
            System.out.println("Cloud name: " + cloudinary.config.cloudName);
        }
        return cloudinary;
    }
}