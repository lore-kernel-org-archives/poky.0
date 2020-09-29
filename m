Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
 by mx.groups.io with SMTP id smtpd.web12.1683.1601402992960398631
 for <poky@lists.yoctoproject.org>;
 Tue, 29 Sep 2020 11:09:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XP6yMOTS;
 spf=pass (domain: gmail.com, ip: 209.85.210.52, mailfrom: toertel@gmail.com)
Received: by mail-ot1-f52.google.com with SMTP id n61so5344823ota.10
        for <poky@lists.yoctoproject.org>; Tue, 29 Sep 2020 11:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XUtoPedEK0jE+OezghlNsRccWjhuTlI4XbkbH9c9WRY=;
        b=XP6yMOTSVH/OZ9swKIPi1BLVuIAvGaD1bMkXXAUqdr+UwxUVED0Y8ACBDL2idIK4vb
         PP0ihQvacldKpYvLyHgWk1mn/iu5Q+XLy8sZcxlZqh3grAFxQ0Cn6Y4KluvsYWHdpOrn
         VL1roj2pilqylyuXQUQTZqkAj1VfMfec7Aqkne1pBcc2C/x4CWTxxBeo/ciGnil3HbWE
         z6mkbAhgHYZbkyaL3FvusC0bqk1iBvau0oJIF/bVf+RzsD07hJV2zqvJtYpnHbrzz69m
         fDjxQOziIllV2u7OPUXQ/ZP/N7CLyjFmNOpDlK4Z8LrkjHGr/OLNUSmVl1qznhKGibke
         cv7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XUtoPedEK0jE+OezghlNsRccWjhuTlI4XbkbH9c9WRY=;
        b=SYRaptlMPODfdayyoeoN7ouDRrgqEzerGeTtN9JsElqlRoDmIlidIeS6Sg4hpIYq+C
         FEdIEOeE0uMmAzYWgIm5p5OO/Hjn01buttYDtgJwFAUbbHwM+WMIHTVPV/xUB7YEZvPW
         FMPsJkkP9n9RNkhm6q9fxaqnJdGkhiJYWQdK26+90oqcKe2Ojs9yxI6Sx9hPiaj50bI1
         o6fHC6qSQdZhXwfcOklrABgh+tLN3hsFkOhsRNWibdqpOI73lwF3tXIvozlu+iLYCtJL
         rS55XvefnxLrPFRnqg0NFJhQlLYB3iCMJ1eI4vdcXEf+QXEIIvUvHt9YPy/2/Isqrs9E
         dN2A==
X-Gm-Message-State: AOAM5308d3iOdM2ud6ysaeo4iG16YVFZCPbzZHrOP5dauw7HH2Fj4P6m
	Nd5EBRKdvOSWIo8yaSOxUSavJppeof3kA9gC8Ps=
X-Google-Smtp-Source: ABdhPJzGQ93WtxDjvg4xqT0wcfTFPVeSayBKYZF2rVl2uKR+iIiYDnhFK5I95lK5bfaYbrdwMCe3tZQKYHkbqJ0FkTM=
X-Received: by 2002:a9d:ee2:: with SMTP id 89mr3727382otj.194.1601402992320;
 Tue, 29 Sep 2020 11:09:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200919131951.11129-1-toertel@gmail.com> <CAEE5dN385Lez85OSOKxSkdtWmyBRC_33RorW105=CDyC527+pw@mail.gmail.com>
 <5b2ed179f814358e99c7eecb4f17da07fb3fc2ee.camel@linuxfoundation.org>
In-Reply-To: <5b2ed179f814358e99c7eecb4f17da07fb3fc2ee.camel@linuxfoundation.org>
From: "Mark Jonas" <toertel@gmail.com>
Date: Tue, 29 Sep 2020 20:09:41 +0200
Message-ID: <CAEE5dN0mHSfiv+DZKpx_D5P0SQFVk-N8gKDd-bCKxpCdvFk7rw@mail.gmail.com>
Subject: Re: [PATCH 0/2] Map license names PSF and PSFv2 to PSF-2.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org, pidge@toganlabs.com
Content-Type: text/plain; charset="UTF-8"

Hi Richard,

> I'm afraid its not the right list, these would go to openembedded-core.

Thanks for the hint. I re-posted my patch on openembedded-core.

Greetings,
Mark
