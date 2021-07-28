Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
 by mx.groups.io with SMTP id smtpd.web12.2007.1627512444609404542
 for <poky@lists.yoctoproject.org>;
 Wed, 28 Jul 2021 15:47:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=vCH+DvLW;
 spf=pass (domain: gmail.com, ip: 209.85.160.176, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f176.google.com with SMTP id h27so2567495qtu.9
        for <poky@lists.yoctoproject.org>; Wed, 28 Jul 2021 15:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=czEopZVX5sXWsza55XjOw01LpQN6HoNOVs4A0D90RW4=;
        b=vCH+DvLWl3TJ861c7NEPvfLjVzABFBdT+lUG/9YAgLZXBDMu5IeXkYqlWnx3fH5aNU
         mbQqKpJSkvpuGN6XWpNv3mJj6PB1wMXO+YIULiif6/Pdxwr4jI5MGcPOuSUGL6IH+iD7
         JyniL66604mX/cw/9J1A9QVzgUR41ZHnJzbz4oDjCzcopcKAubgLEB7Y5r9XBuI9KiiA
         1ahhxEPrVHxuG1NkvKwj4QZqO7HxcC9RHfDOVc+ujg8slqxFFc/tGhrp8ts6RIN+GTvo
         2g28+6XuS6jCC6+zjLHdZvrgzPw9wnBecGUKYbiBnuhJYlSNB08FO+s/YDKmU3JR+/8U
         aaAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=czEopZVX5sXWsza55XjOw01LpQN6HoNOVs4A0D90RW4=;
        b=a3vfDpGyJZYpVLZEetF/FpWRs1h/OMn+uqZFqzGqMINaPkjNyF3bE5nH4iQeTMZvK2
         5Z9zxcnx51kzpapymLINi4etRsrpL76s76+4l2K2o8n8iyA0H4V6T5G4qkWs1v9Ii8jE
         lZRciguX1PiBB7YqZdJ9saSsde7/+ednGpHHHrxtMc5Ev3VsMN3v2a6DQIHnpYITtE0T
         1URmYaqVpTApfCO0FaXDeBm8oy71C418G7Iu/m4HprjxcDyJgvL/bRYsGgxwzBqOmF3a
         1HnM9niYPnSt85IThOMOAZIhdtmotM6p37239/IaOyeUgM01kGfXZrJap00dOQJ3IGha
         6tsA==
X-Gm-Message-State: AOAM531Ar5ArvbPIVwnf8JMV68rd15pspBM4wR13O7NkYT/XXXGVRADT
	FFUn7zZGXjeik6u1uzKncpaXnWuECcqbUTye8d8=
X-Google-Smtp-Source: ABdhPJxO0bADxMfeWPZD/jlxcKw1vXNxNStecQNUsW2OxFyhcCPeGhEbHEzSPxIXcJrVGZ3sC9QW+0pi3LuxUAbajwI=
X-Received: by 2002:ac8:598b:: with SMTP id e11mr1715808qte.299.1627512443614;
 Wed, 28 Jul 2021 15:47:23 -0700 (PDT)
MIME-Version: 1.0
References: <5197.1627453855196654342@lists.yoctoproject.org> <5197.1627456663662589589@lists.yoctoproject.org>
In-Reply-To: <5197.1627456663662589589@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 28 Jul 2021 15:46:57 -0700
Message-ID: <CAMKF1sr8AkPYuB-BJMMYKA=OYUhBZVf6WHaxCOBXWFbZD1wzXQ@mail.gmail.com>
Subject: Re: [yocto][poky]: Issue addng libgloss in .bb file
To: nagesh.shamnur@gmail.com
Cc: poky <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

hmm its not clear why --sysroot option is not working in that case
since it is there in your compiler cmdline and it should have added
proper -isysroot option to let compiler find these headers
so there is something more to the problem, I see that its trying to
compile libgloss along with rest of newlib. libgloss is built by a
separate recipe. So perhaps look into this area. Also try to build
it for say arm architecture and see if it builds or not.


On Wed, Jul 28, 2021 at 12:17 AM <nagesh.shamnur@gmail.com> wrote:
>
> Issue got resolved after adding
> CFLAGS_prepend = "-I${RECIPE_SYSROOT}/usr/include"
>
> in newlib.inc
>
> Thanks to khemraj for the help.
> 
>
