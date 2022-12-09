Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web10.5764.1670602800105630946
 for <poky@lists.yoctoproject.org>;
 Fri, 09 Dec 2022 08:20:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=BDoWYp4F;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f44.google.com with SMTP id f13-20020a1cc90d000000b003d08c4cf679so182561wmb.5
        for <poky@lists.yoctoproject.org>; Fri, 09 Dec 2022 08:19:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rorAg0r+xbZXU9R6pxa/vLR5ZGgOObVzCUkgDU6/Kb4=;
        b=BDoWYp4FoAZcmkd5kKxdGn6zhiDrE+ZZzO4nhRZ1fSJfrvrKsaf0sgYakuv+75HP9c
         E7gve7kUlTQMjJBXJNylHLofw84tp8ZPM3n6nxMfpl0956/GIbWZhyEHEn8nPp4dGnOX
         FBSh+CYrn/3OWZTBr/oxRce3JmLFTz8KlEP0g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rorAg0r+xbZXU9R6pxa/vLR5ZGgOObVzCUkgDU6/Kb4=;
        b=Pklhgxy8kMxogyhaEtvbT1BI9QNxGqkJpf+TWenoC71h0FtVn2lrUOazYEwoHsDPru
         D+bvceimM0WF8K8DMFIL7a3+4nT8ldsC8p345buBUbq2uL7D0kYtFA+vfnBhTITsjpJo
         06rhnjp2FnRneqH6sUlpFz7eq6yR+XR0QNxSgv/SWaJ66vmOozsccLrPXXxeHxoS2pJk
         E4fNCZK1zOQt210JwZxFzpUPML7EuVqn7WfaV2rz8eO2P+d1qGNqy/dDVTFGfbvYN16A
         qxoEM9sP9M5jC4bbz1XeJcDvSsl4mUqiPYjTqEe5srQfKmVV1HM9YeyBIKLNLoOxH9x/
         ApAQ==
X-Gm-Message-State: ANoB5plHiCyNHKeaMeh0+Chh7K+9uxPp+8cDpa6ehmIQpMv5XX29kXYN
	S4L9OF0pK15nn4EkLS9tjFANIg==
X-Google-Smtp-Source: AA0mqf5m2JrrTqcJBOPaV9JtVyEzN2HOxOyxFasOaFsZYiy86mKjXqnqEuYOFO9rGCkrhZQ2Lbzp6w==
X-Received: by 2002:a05:600c:5026:b0:3d0:8722:a173 with SMTP id n38-20020a05600c502600b003d08722a173mr5708080wmr.36.1670602798456;
        Fri, 09 Dec 2022 08:19:58 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:9b77:8930:5aaa:e9c4? ([2001:8b0:aba:5f3c:9b77:8930:5aaa:e9c4])
        by smtp.gmail.com with ESMTPSA id a12-20020a05600c348c00b003d070e45574sm220813wmq.11.2022.12.09.08.19.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Dec 2022 08:19:58 -0800 (PST)
Message-ID: <113bc7de893b394142ee924d27c9c5a716856c8a.camel@linuxfoundation.org>
Subject: Re: [poky] Unexpected package version going backwards warnings.
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, Daniel Squires
	 <dan@engineeredarts.co.uk>
Cc: poky@lists.yoctoproject.org
Date: Fri, 09 Dec 2022 16:19:56 +0000
In-Reply-To: <CANNYZj_bEZ_EVdXjrFWaGtAoDfsX_4jieSrm+Vg5t2wC8dZXHQ@mail.gmail.com>
References: 
	<CAC+ji7EOT6D35madOZvx6tS8Nj43Tiq-cg06WYO8xue8MnBhiQ@mail.gmail.com>
	 <CANNYZj_bEZ_EVdXjrFWaGtAoDfsX_4jieSrm+Vg5t2wC8dZXHQ@mail.gmail.com>
User-Agent: Evolution 3.44.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2022-12-09 at 17:13 +0100, Alexander Kanavin wrote:
> If you do not care about updating packages on target with a package
> manager, then you can drop SRCPV from your recipe versions.
> Otherwise, you probably need to use a prserv, as described here:
> https://docs.yoctoproject.org/dev-manual/common-tasks.html#incrementing-a=
-package-version
> which will ensure package versions would never go backwards.

Rather than dropping, you can just disable that QA check too, something
like:

ERROR_QA:remove =3D "version-going-backwards"

Cheers,

Richard
