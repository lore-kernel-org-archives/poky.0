Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
 by mx.groups.io with SMTP id smtpd.web09.746.1579722091543612440
 for <poky@lists.yoctoproject.org>;
 Wed, 22 Jan 2020 11:41:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ub/r6pTl;
 spf=pass (domain: gmail.com, ip: 209.85.160.173, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f173.google.com with SMTP id w8so499633qts.11
        for <poky@lists.yoctoproject.org>; Wed, 22 Jan 2020 11:41:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cZxRUYNi7OlUY9uX8+owE4pEJph1ZQHQmuge9XFF29Y=;
        b=ub/r6pTlaVymP1uK14jS47iJIxIzdEYL7mzDLMGoXOtmQaHRSiORSpc84zw1bVyFfg
         vp0E0dLDpoGe93+85vobIAJ/vU9SbBJ6pdJ0n4nPFU/ZjDHGwNnHAjUDLMggthtEfJmO
         mI1uBo84JAoBv88F44hALbdEntmKOqKqUkMWHt789sSfg1fUe4Mj9jOK7EQkGKU73oSs
         F7IolaKT5VpI1wD+qktTffvaQFtope+5mnYf2diR83BIShoRTaqaCgwgnFK9p+NyrYdt
         S2qD3mhSCUHvuVbAXhRE+O+RYk4oM8RP8hAzS2AilWTFxqVLFZnlZXhqRsE9TJ0bvzsQ
         Lz2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cZxRUYNi7OlUY9uX8+owE4pEJph1ZQHQmuge9XFF29Y=;
        b=KtXbT1yBEzbmAZFfy4Jnh57wiaUpmr4P3PWBjMHX6xGl+QI3haeac/93hYhRolknac
         R710gjvW5COI4imIm7NuE5C0lw3JeHG5NauB1An5QBrBmHIpXXR/vWXl242OwFwhTUka
         0wCPNmoyuzblO3xDarvh248nc2etu21uV4AGJOZIpOK9obJ64x3eoNuWF6sFdcLq9ah6
         JIsE5qxVPdzHw7elpkYbPGomdXBwWqRp9xeGbXYK21f72Wza/L3Q7qGS5W6/fgFLKw14
         tvbI8/zdnr4mGSAEJD/YGaKSek9TvJSuDoqnpE3FhJR+k2unplWpFmCAGBnTn25cxC8i
         UGTQ==
X-Gm-Message-State: APjAAAVLDgEVbhUBEYf3GGt4FP/pnC9SnzDbP2NqG/X405xaPnoN2Z4u
	5uUzSnkT/M+DLDehjL+uXvw1mUrN9Bryc+N0DmW6X75i
X-Google-Smtp-Source: APXvYqzbG5tuZUacdGZ6EXlQVVp/lEQ6nEn2pE1wa8jHZSRnbRDp4vdxYiokxKjvQJP55P+0MyildS9Y1UuCazbOlGs=
X-Received: by 2002:ac8:5257:: with SMTP id y23mr12218066qtn.88.1579722090420;
 Wed, 22 Jan 2020 11:41:30 -0800 (PST)
MIME-Version: 1.0
References: <V5kT.1579720627445078822.cu1I@lists.yoctoproject.org>
In-Reply-To: <V5kT.1579720627445078822.cu1I@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 22 Jan 2020 11:41:04 -0800
Message-ID: <CAMKF1so5G6towiFSmAmxg7npOTEdu_x1iSMP9C+MCO2cA6sASw@mail.gmail.com>
Subject: Re: [poky] How to make the image to get the IP (over DHCP) and listen for ssh connections?
To: yuri@rawbw.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Wed, Jan 22, 2020 at 11:17 AM <yuri@rawbw.com> wrote:
>
> I've built the image for Altera cyclone5 based De10-Nano board. But it doesn't get the IP address, and is also very small, only 43MB.
>
> Is it documented how to enable networking/DHCP/ssh?
>

which image have you built ? and also check

ifconfig -a

and see if it shows the network interface you are expecting. It could
be that the device itself is not initialized due to
perhaps driver issues or some such.

>
> Thanks,
> Yuri 
