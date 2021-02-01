Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
 by mx.groups.io with SMTP id smtpd.web12.41330.1612211861062554570
 for <poky@lists.yoctoproject.org>;
 Mon, 01 Feb 2021 12:37:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@broadcom.com header.s=google header.b=MLHM03yq;
 spf=permerror, err=parse error for token &{10 18 %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email}: invalid domain name (domain: broadcom.com, ip: 209.85.219.174, mailfrom: jonathan.richardson@broadcom.com)
Received: by mail-yb1-f174.google.com with SMTP id r2so650541ybk.11
        for <poky@lists.yoctoproject.org>; Mon, 01 Feb 2021 12:37:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=from:mime-version:thread-index:date:message-id:subject:to;
        bh=J3WGWBa1bVe7VyeUhq3UM4kW0NOr2/6Sm6fYP0vGboM=;
        b=MLHM03yqEcY0cKSRLMocQcHB0IpwiEoyw0AY1jMJyAEBV+JEQW0C5qImizLgarHTSp
         grTEmvp2cyHVGlW+7Q/5LlvCaH3VnjMSROTLY/1MOpVwRCi9Yscd6Uk1ptSK2vP+rP9I
         E0D9qzzLhvsaeIz5jd6vZSQFRq1LHknbpr6pk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:mime-version:thread-index:date:message-id
         :subject:to;
        bh=J3WGWBa1bVe7VyeUhq3UM4kW0NOr2/6Sm6fYP0vGboM=;
        b=GO27sHVEJvgcVK/SgaqEKOc90QaGb/0Nuvbabf/brraDtL6x/fxWNdQRyLi6J6zHK2
         pOoP4K9l9BxGcAUsFp23qBqkw+fpr2WjbKJMNbHSHbZP0DVxtMOqr5y7RK0wFMqs+MBX
         Q2IQuB+iIEjzuyj5J7XDMfUjBGYER/nEGyzMqYQeToucfPfIRB60VcU0ePtaEBycQ72+
         RycHVqH9YVTTjcY8nrS+FOFV3iFUw62bAYDKiWL3Qh83n75UYZM6qb2Pt2COxnnOsCiD
         rMvcDUQ7aP1kcOd/Isz4hGzeaSZDZCosqeSdvwMoY4bK4UOYmzN80bVSXNeVxb7WOKeg
         xg5A==
X-Gm-Message-State: AOAM532qzaD0NJF7NaGGXp9EeCcATBpVnbphKevBFnQ939OWtBGgsy13
	Np3tJaEgg2cl8wOMePJ7wuJmsluU8IZluae+qUl5Dg7V0Xs=
X-Google-Smtp-Source: ABdhPJw4oRr4Ae5+smCCZxDuS0rd62G8B7oGmupv/Tmg7bxQFjoNl0uG3hUTgS9JqDAqH0iV+6MJkLsyCqiRWQhptDI=
X-Received: by 2002:a25:76ce:: with SMTP id r197mr6465030ybc.11.1612211859988;
 Mon, 01 Feb 2021 12:37:39 -0800 (PST)
From: "Jonathan Richardson" <jonathan.richardson@broadcom.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: Adb42Yzsq1gxFa8ORtaRO7Z+7dzAJA==
Date: Mon, 1 Feb 2021 12:37:37 -0800
Message-ID: <d1a13d7af36ec70895118c077d29660f@mail.gmail.com>
Subject: dnf ignorearch not working
To: poky@lists.yoctoproject.org
X-Groupsio-MsgNum: 12345
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="0000000000003ddfa505ba4c530b"

--0000000000003ddfa505ba4c530b
Content-Type: text/plain; charset="UTF-8"

Hi,

I tried adding ignorearch=True to dnf.conf but it doesn't work in a recent
yocto using dnf 4.5.2. I have a driver built with different machine types
but they are functionally identical. I see that dnf uses 'rpm'. rpm
--ignorearch does work. I debugged dnf and see that when dnf installs an
rpm of the same architecture it sets the IGNOREARCH flag which is used by
'rpm'.

@property
    def _ts(self):
<clip>
        if self.conf.ignorearch:
            self._rpm_probfilter.add(rpm.RPMPROB_FILTER_IGNOREARCH)

But when doing a dnf install with ignorearch=True and an rpm of a
different architecture, this code is never called and the flag is never
set. It queries the database and fails saying the architecture is
incompatible. This looks like a dnf issue. The only dnf bug reporting
database is for Red Hat. Not sure where I should file this bug because I'm
not using RH and it sounds like the feature is being used successfully in
that distro.

Thanks,
Jon

--0000000000003ddfa505ba4c530b
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
vHaK84VoWnHQcLUkaMiN0X7XM5C6vIo8yhBhA6BaVus/5I1NTLPbKuo/kWuFjk2Fpoe66YLtTn3h
RoVB1OA8ItIQN/sCAwEAAaOCAdcwggHTMA4GA1UdDwEB/wQEAwIFoDCBngYIKwYBBQUHAQEEgZEw
gY4wTQYIKwYBBQUHMAKGQWh0dHA6Ly9zZWN1cmUuZ2xvYmFsc2lnbi5jb20vY2FjZXJ0L2dzcGVy
c29uYWxzaWduMnNoYTJnM29jc3AuY3J0MD0GCCsGAQUFBzABhjFodHRwOi8vb2NzcDIuZ2xvYmFs
c2lnbi5jb20vZ3NwZXJzb25hbHNpZ24yc2hhMmczME0GA1UdIARGMEQwQgYKKwYBBAGgMgEoCjA0
MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzAJBgNV
HRMEAjAAMEQGA1UdHwQ9MDswOaA3oDWGM2h0dHA6Ly9jcmwuZ2xvYmFsc2lnbi5jb20vZ3NwZXJz
b25hbHNpZ24yc2hhMmczLmNybDArBgNVHREEJDAigSBqb25hdGhhbi5yaWNoYXJkc29uQGJyb2Fk
Y29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNVHSMEGDAWgBRpcoJiMWeVRIV3kYDEBDZJ
nXsLYTAdBgNVHQ4EFgQUa5kon5XwHZRSZkX5IOJpNb4vbw8wDQYJKoZIhvcNAQELBQADggEBAAaL
wxrc2inAZlHxB3cfK6JxuQI5tZBg5stkNrv4jQ//mOyUsTYCAOip2b/YYrczxaRRBGrSAh7mNVfS
pKyxl2zd/0jj5nwLv9xy78GL89xD/mVvd1gXADqQDTFjHNH3Hqg1lu3vtWq1tOFxdyrDsX8cYkUv
8MIM4iHV5TYM99qNGxKbj/ZNdcHYBO45IIFNG/nqe7nPkQ7ikilr/Y1+DGpVwesuxm9x2ZiRPlBN
MtXVWdVK2QyHMXHbJoENTaUb8qPrzI4gwF9C9nrQBYIJx45s9AMLn/xozqDMyJXqFluyQjJdwv2+
BdZUGnCAtzSgrEru5ffGcSvpzK+qArTc7UYxggJvMIICawIBATBtMF0xCzAJBgNVBAYTAkJFMRkw
FwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTMwMQYDVQQDEypHbG9iYWxTaWduIFBlcnNvbmFsU2ln
biAyIENBIC0gU0hBMjU2IC0gRzMCDH8hIsPI4q59Cxj1yjANBglghkgBZQMEAgEFAKCB1DAvBgkq
hkiG9w0BCQQxIgQg3aJBSU+bfDzaEOJm7BnQv+WoRsLgv28M4BoRlbXqyWowGAYJKoZIhvcNAQkD
MQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMjEwMjAxMjAzNzQwWjBpBgkqhkiG9w0BCQ8x
XDBaMAsGCWCGSAFlAwQBKjALBglghkgBZQMEARYwCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMAsG
CSqGSIb3DQEBCjALBgkqhkiG9w0BAQcwCwYJYIZIAWUDBAIBMA0GCSqGSIb3DQEBAQUABIIBAJt7
KNWkrDdrFJW4K7CfArzfWledh9RngZwHHGtc6yw2ktFi5Tmmz0cNfS/SfHAi3p5lskJn7AOijzo6
liD8uwRwauNmtehJ25ZuBYeB7eS1fz2j0+PwhDVnirvcJ22XbXupayr2/uLOfWsF4kjYuZqW/YNX
4P+m3C4G1t5JFljNPpihiJstXH/9rjMDDAecwTiCXbO5mlJAXDMLTisIr5G+Hz+fwQgXpP9VY4Ho
N9NT2HyzQglZcf64XwVA7+OevmVZ0G84iw51EJXeQvcokXjjfUbEhBjurXFTyuD4GOvWXEea9C8o
d7TD6+RpJWbRwM/mq11FZ9jTHWBU4W0X6NI=

--0000000000003ddfa505ba4c530b--
