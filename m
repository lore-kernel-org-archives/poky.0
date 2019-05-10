Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABCA1E00C78; Fri, 10 May 2019 10:36:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com
	[209.85.215.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6014E00A1C
	for <poky@yoctoproject.org>; Fri, 10 May 2019 10:36:50 -0700 (PDT)
Received: by mail-pg1-f169.google.com with SMTP id i21so3321877pgi.12
	for <poky@yoctoproject.org>; Fri, 10 May 2019 10:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=P0jeP0DoVUPRULATpsGVVUB9PVr8wWlplXKxv9+XcjA=;
	b=jvSwHc+v9neBmWkPIxvAe1H1/z/gaK621eJRTehV9o6s6nDvq4yE+Xhw4O+/Er0sxM
	bf8ZUGNpETTmNl9S6iPiqitfMvmdpBxPQ2oedfR+NHw3SDIyvrbFuuk+czN0rsGZHlMY
	RipAXw97NSftyOdeWfjXOb74O1YsY6gU1ZBs8OKzGOmWmEGcelA3KZAqj/sVst34l6Lm
	Rq11UoTLVR1ECmZwnve9bJg17WgWV45n1Lwm5ojjlY8vYV+WDJKsna+5TH5etbzoo/nT
	EzoMKxfk9kXmDoE5wW1KkWh0RONoOcMXQEa/cMcVNiIR/CJUjDkIwmfKWf+XPKtj2Dkx
	U8eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=P0jeP0DoVUPRULATpsGVVUB9PVr8wWlplXKxv9+XcjA=;
	b=ceDTwHSyiinfLogRDRbD3yZtJjDa9VtMEPOERzfpoSvWt5n4UrIB8znJUlfv8QwqKG
	/FioSKmE5pn+PodX0w3n4WLMzQqTbkSsTmSo0GrKpYJia/rnDJIj4ce9+bGIK2tun3l+
	Bu7tNVlTZ1LlWRUw1KOf3f8/jc7K3VgiT/t5UKbtPRQwyEphZ2Gyz5Al1uIBUS5sulpq
	fpDnfAdlJ/HRzcm0j1+ybaUVz+jrZMZTXoD4NZYb3S1bm85CgKzNPIYguv+GlxBwMhuV
	6ly1WfjZlo3koA4eKEWLWSUV4/m0dSL9pEkGe3ehaRiONRLUcpmmNwSm3NnP7rxnltM7
	99Zg==
X-Gm-Message-State: APjAAAXaL/zyLN3xeryKdaYhsgECLivF8qHqVB1HZ8SSG8OOo1nJ1xM2
	gYDJvn1dQnggPic945n/BaWDIZS+dLY=
X-Google-Smtp-Source: APXvYqzVaIeNARuYEI1uvWF77nlLwBipwuMCklBdodmXnNBmQL87KpDLhkiYs7EEyAeDXgBAijBDgg==
X-Received: by 2002:a63:9dc8:: with SMTP id i191mr15082337pgd.91.1557509809633;
	Fri, 10 May 2019 10:36:49 -0700 (PDT)
Received: from hermes.local ([2601:646:8500:6bc6:6095:8839:3497:2f69])
	by smtp.gmail.com with ESMTPSA id
	m17sm8323257pfi.17.2019.05.10.10.36.48
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Fri, 10 May 2019 10:36:49 -0700 (PDT)
To: Arno Steffens <star@gmx.li>, poky@yoctoproject.org
References: <trinity-8c3db1ff-6d98-4569-8cf1-bdef6962e89d-1557402636185@3c-app-gmx-bs09>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <abfc9e7a-11aa-b73f-5b0f-e4b0b7e95d9e@gmail.com>
Date: Fri, 10 May 2019 10:36:48 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:67.0)
	Gecko/20100101 Thunderbird/67.0
MIME-Version: 1.0
In-Reply-To: <trinity-8c3db1ff-6d98-4569-8cf1-bdef6962e89d-1557402636185@3c-app-gmx-bs09>
Subject: Re: SDK and rootfs
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 10 May 2019 17:36:54 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 5/9/19 4:50 AM, Arno Steffens wrote:
> As far as I understand the SDK is created by "bitbake <image> -c populate_sdk".
> It seems to contain an (almost) complete rootfs.
> In previous versions I even created my rootfs out of it
> ln -s sdk/sysroots/<machine> rootfs
> 
> It doesn't seem to work anymore, not sure what is the problem, at least /bin/sh isn't there anymore, although it is part of <image>.
> 
> So I found that rootfs is to extract by a script out of the <image>.tar.<compression>.
> I have to give to developers 2 files, SDK and image for nfs-booting, right?
> 
> I am wondering why this is needed? Shouldn't they be identical? Can someone explain the background for my understanding?
> 

you need to provide a firmware image and the SDK then is equivalent of 
that image + developement headers and libraries, this is traditional 
Application SDK model.

You can also look into extensible-SDK where you ship the full build 
environment and end user can add packages to their images as they wish.

> Thanks,
> Arno
> 
> 

