Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web11.13335.1662044212011957276
 for <poky@lists.yoctoproject.org>;
 Thu, 01 Sep 2022 07:56:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IQbewVwe;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: adimhatre303@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id w8so15745877lft.12
        for <poky@lists.yoctoproject.org>; Thu, 01 Sep 2022 07:56:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date;
        bh=Q1pZrW1wkKFBeS3+mB2SSNUPU4KKIp8g42ACjnlBe5o=;
        b=IQbewVwej8WtLhF2PynRgOxXQTuaPZfQB4dgpwzZUkQdHnaZKuAftti4nlbnPSzMgz
         gTEklQ8OZnYfp4r6OnHKjNiqBMvD3pihPEJnB5GQzuN5/Z/FH5h5zzW46Ffc4uC/Zoxh
         Ge22dFjI1E2iAmp54aSZVlUgvVYof9YNnWg2DTCSHsSgt3CVfsF2fzszYilxCn1C013C
         sRuQFh19FSC3CR2kTKf7jE2HpdIe0o7/w86N2yoOpxgI/PFt9WzrysKFEfVpCieQrGJY
         aej+Z9hJ8C/tAbzOsv6Qjfew1cn9EWBHmRZeijShXVxL4QV8e3l1HNFCgOja1PeoXx3z
         OEQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=Q1pZrW1wkKFBeS3+mB2SSNUPU4KKIp8g42ACjnlBe5o=;
        b=D8kNdWtxigh2V+5TeFFX93Dpo3XiqkIy/CSNTx9voW8WrhUfnNbl8hafA80M7bHr5x
         dSyzs1f9Q7b9qv8uuzE8V8LgLCWqiovbZC0PGYwY1rqUydQQhmIvkaIGz+Qreb3XWCKL
         mgIjdf542UdG6Q3ZLopwRyhBBCeHLEEGEHCSxCNcgc/GzM086QE0dmJiWBiI60UQm5jo
         R6uKCD9W3EWW3wgYGmEDFIyLpiBsODXXxbiwlJepmXBC97ZM09vB3SN5EnlSvule/6r9
         tZMVoxxP6VSRYYO+MuL9HSkUv/5rrz60HwCnjQBAvqZQYHBf/KwN1Wl40xXos94pG4Km
         V00g==
X-Gm-Message-State: ACgBeo2RmqrmYKtg1vMo0DfPiZPsYbsLJtZK9QImX3HL2kN/xvrGUXe3
	vu3RwyFUGgIgjkt1+vPlV3Hp5LPjLAjY/9VTxtekXFLoFAJMfE6JFrU=
X-Google-Smtp-Source: AA6agR4QcSzX/4g9E6DZPbmolJV3ajPI9wlUAbsVFvrJVMPaAlLvyCa339XEY5c/HB1UFxpscHvxE1Mhfiz7iTiuXSs=
X-Received: by 2002:a05:6512:2386:b0:494:66a5:8018 with SMTP id
 c6-20020a056512238600b0049466a58018mr6710517lfv.96.1662044209749; Thu, 01 Sep
 2022 07:56:49 -0700 (PDT)
MIME-Version: 1.0
From: "Adinath Mhatre" <adimhatre303@gmail.com>
Date: Thu, 1 Sep 2022 20:26:38 +0530
Message-ID: <CAGB4t6XXRUOqH3879RMA1J6Zt4Ne9cELfXRnmfW4Wk4Aw37NjA@mail.gmail.com>
Subject: Dunfell Kernel modules debug info
To: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b9204a05e79ed25b"

--000000000000b9204a05e79ed25b
Content-Type: text/plain; charset="UTF-8"

Hi,



Recently I have upgraded from Yocto Warrior to Dunfell, in which I observe
a major file size increase in /lib/modules.



After debugging found out, in dunfell by default Kernel modules are getting
built with debug_info, which results in file size increase.



For Dunfell

$file demo.ko

demo.ko: ELF 32-bit LSB relocatable, ARM, EABI5 version 1 (SYSV),
BuildID[sha1]=cb8a24d71c5cf4b87ccac5416e2e716e119a285a, with debug_info,
not stripped



For Warrior

$file demo.ko

demo.ko: ELF 32-bit LSB relocatable, ARM, EABI5 version 1 (SYSV),
BuildID[sha1]=6e4de309f358f27105285428a43dd74ee1ae665d, not stripped



According to default Yocto behavior, debug info should not be included
unless we specify "INHIBIT_PACKAGE_DEBUG_SPLIT".






Regards,

Adinath Mhatre

--000000000000b9204a05e79ed25b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;=
font-family:Calibri,sans-serif">Hi,</p><p class=3D"MsoNormal" style=3D"marg=
in:0in;font-size:11pt;font-family:Calibri,sans-serif">=C2=A0</p><p class=3D=
"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-ser=
if">Recently I have upgraded from Yocto Warrior to Dunfell, in which I obse=
rve a major file size increase in /lib/modules.</p><p class=3D"MsoNormal" s=
tyle=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif">=C2=A0</p=
><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Cali=
bri,sans-serif">After debugging found out, in dunfell by default Kernel mod=
ules are getting built with debug_info, which results in file size increase=
.</p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:=
Calibri,sans-serif">=C2=A0</p><p class=3D"MsoNormal" style=3D"margin:0in;fo=
nt-size:11pt;font-family:Calibri,sans-serif">For Dunfell</p><p class=3D"Mso=
Normal" style=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif">=
$file demo.ko</p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;=
font-family:Calibri,sans-serif">demo.ko: ELF 32-bit LSB relocatable, ARM, E=
ABI5 version 1 (SYSV), BuildID[sha1]=3Dcb8a24d71c5cf4b87ccac5416e2e716e119a=
285a, with debug_info, not stripped</p><p class=3D"MsoNormal" style=3D"marg=
in:0in;font-size:11pt;font-family:Calibri,sans-serif">=C2=A0</p><p class=3D=
"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-ser=
if">For Warrior</p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11p=
t;font-family:Calibri,sans-serif">$file demo.ko</p><p class=3D"MsoNormal" s=
tyle=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif">demo.ko: =
ELF 32-bit LSB relocatable, ARM, EABI5 version 1 (SYSV), BuildID[sha1]=3D6e=
4de309f358f27105285428a43dd74ee1ae665d, not stripped</p><p class=3D"MsoNorm=
al" style=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif">=C2=
=A0</p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-famil=
y:Calibri,sans-serif">According to default Yocto behavior, debug info shoul=
d not be included unless we specify &quot;INHIBIT_PACKAGE_DEBUG_SPLIT&quot;=
.</p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:=
Calibri,sans-serif">=C2=A0</p><p class=3D"MsoNormal" style=3D"margin:0in;fo=
nt-size:11pt;font-family:Calibri,sans-serif"><a name=3D"m_60660683485564847=
64__MailAutoSig">=C2=A0</a></p><p class=3D"MsoNormal" style=3D"margin:0in;f=
ont-size:11pt;font-family:Calibri,sans-serif"><br></p><p class=3D"MsoNormal=
" style=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif">Regard=
s,</p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family=
:Calibri,sans-serif">Adinath Mhatre</p></div>

--000000000000b9204a05e79ed25b--
