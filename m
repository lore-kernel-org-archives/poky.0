Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51])
 by mx.groups.io with SMTP id smtpd.web11.4361.1648077557749278305
 for <Poky@lists.yoctoproject.org>;
 Wed, 23 Mar 2022 16:19:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@nikolamotor-com.20210112.gappssmtp.com header.s=20210112 header.b=XiEc1zsz;
 spf=pass (domain: nikolamotor.com, ip: 209.85.222.51, mailfrom: russ.dill@nikolamotor.com)
Received: by mail-ua1-f51.google.com with SMTP id y7so128045uar.9
        for <Poky@lists.yoctoproject.org>; Wed, 23 Mar 2022 16:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nikolamotor-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=9nrKBV3MExAr4Gq3Mio+AE1icxhR7og2KJlrYkmXm8k=;
        b=XiEc1zszlDQeyvmg9UZLXYOkD01eFOMEW+39JXQ8Y7OSbnedbXxqSPC/e0Wx1RL2bs
         gfBniFESrvyzMePY/J0Ao97nTPLb61H6iH2Po18e9uT6dknbfj9aH3cSmotcqbSiLtF5
         0fOXSDF0SGtggFJKuSgkv0p+jFizwYy5r5BNHCp4o6cwSvGLNT5/Afm4Q8myB2/iN//L
         CFJ4K/fmMnJ6/ttcRSYe55bvALBfUC7q4sCpYIW6nfFi8pBeIJB+GHBEXiV7pWFbeLV8
         psSjOe5+P5XXz29HLXo5r211wibWxACWdDddPsALCTXNDjT6RJDwbdFudE4YzPt6kiuy
         NF2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=9nrKBV3MExAr4Gq3Mio+AE1icxhR7og2KJlrYkmXm8k=;
        b=QlmKykhLrzpECNxdwzyhsmqw6JTbkWmHX3vimr0SEMbaHWNNK3cSjGa7Z0ND89IseQ
         z9jiYudkHJFHUAB3twvpPxspUVCU7BvQ3hNDgvwrX36S74iC87CEqi4zdRmcwRvR1cLp
         UKtDnjiZmyxOxSiMge4qEerMb+jDheP3uR+gz4QsO+58sOKhQrSFGJ+RQgr1tg65edNM
         Q+aHZL/Zmiu8Txv+qEY/4YVQzK6SXUvGp1dYd1EOXyKJERxXCZaCtwkf6Hp5nQEyjzcp
         ZXZS/q3xiKnLpEBLhx53yFz44DhAEMuOAckB4AfRN36RMmpJZRt5JSMMx5C/32of5FIA
         ySEA==
X-Gm-Message-State: AOAM532w1L/ruqdhIG0sFtNCQeWInOf3QvVXjiinbUafk/J2CoWJ6S35
	vBWKkgIqhqJ/csuK5pLF82iuDqQAhADVz2fhO5gwWfY4TR9HCiAaQSWAfUSPtURk02oiTwtHdSB
	1+Z9I5GzYRn7jfTF8ZtR0Z5wum/6senB1soqW2UNSVK0/SqdkLdD8vMlueLEt9/QvEPSglXEebt
	JzKBeD15AfJNTheSHOjFrWGuP++9fC0zQJm7a77cxr2SszF7Dq9acsBzsHuw==
X-Google-Smtp-Source: ABdhPJxRq0JiZgJimXe6G+UYfLdasIE02o0HmTFa9yHULigh2TtMQmEPZFTVAy9uJvFgtn/t4telA1adLlST6ypmrrE=
X-Received: by 2002:ab0:7a53:0:b0:359:9612:302e with SMTP id
 a19-20020ab07a53000000b003599612302emr1109664uat.3.1648077556245; Wed, 23 Mar
 2022 16:19:16 -0700 (PDT)
MIME-Version: 1.0
From: "Russ Dill" <russ.dill@nikolamotor.com>
Date: Wed, 23 Mar 2022 16:19:05 -0700
Message-ID: <CA+05Mtot-gG8OyOEWD2e7bmfCYqu-15OVO2GHSX+-x5bwbqgLQ@mail.gmail.com>
Subject: [PATCH] poky/kernel-yocto: Run do_kernel_configcheck from source directory
To: Poky@lists.yoctoproject.org
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
X-CLOUD-SEC-AV-Info: nikolamotor2,google_mail,monitor
X-CLOUD-SEC-AV-Sent: true
X-Gm-Spam: 0
X-Gm-Phishy: 0
Content-Type: text/plain; charset="UTF-8"

do_kernel_configcheck utilizes pathnames relative to the sourcedir
but does not specify ${S} in [dirs]. This is especially evident
if bitbake is run from a directory that contains a meta/
subdirectory.

Signed-off-by: Russ Dill <russ.dill@nikolamotor.com>
---
 meta/classes/kernel-yocto.bbclass | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta/classes/kernel-yocto.bbclass
b/meta/classes/kernel-yocto.bbclass
index 1d5a8cdf29..c787b2a122 100644
--- a/meta/classes/kernel-yocto.bbclass
+++ b/meta/classes/kernel-yocto.bbclass
@@ -620,6 +620,7 @@ python do_kernel_configcheck() {
     if warnings_detected and kmeta_audit_werror:
         bb.fatal( "configuration warnings detected, werror is set,
promoting to fatal" )
 }
+do_kernel_configcheck[dirs] = "${S}"

 # Ensure that the branches (BSP and meta) are on the locations specified by
 # their SRCREV values. If they are NOT on the right commits, the branches
--
2.25.1
