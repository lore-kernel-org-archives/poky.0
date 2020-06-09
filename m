Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.6140.1591706372377351794
 for <poky@lists.yoctoproject.org>;
 Tue, 09 Jun 2020 05:39:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=MmrvOt0I;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8A13E01CA5; Tue,  9 Jun 2020 05:39:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2C3AE01C32
	for <poky@yoctoproject.org>; Tue,  9 Jun 2020 05:39:30 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id j10so21125066wrw.8
        for <poky@yoctoproject.org>; Tue, 09 Jun 2020 05:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=R8j6qiYXzUzSD5snDdNpqo1eLLceZa5tpjCXZkABrik=;
        b=MmrvOt0IdyI8+wyHmfCA/UuBxiDpQcR/+2BoNiqhLnI9sqAeMrzEMFoUcKa8wCJGAa
         W8GwduVsKLhfHBtO3dTnU7+FWjqzeVm0CoLIjNHc7iX+gO+z7eNx8HAuqH8zgEF3tvtA
         Lm3Lwb3iDIaGLScjaKp4lkEEHeu1+WhAEFXBQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=R8j6qiYXzUzSD5snDdNpqo1eLLceZa5tpjCXZkABrik=;
        b=q2O6oCag/cIan2fPg2GJ+rSDstVHu3cnUYkWSB8j7rVXACzeodHYgun3oj740OdJiS
         clEzbLn+2/tFQ5owfoQkn3ed3QidS4RQCWKNzT52WZwKDCCVtb0wTGSFm0CIjpfXg+Ho
         Z5o6n3NaIRSyim4we+UpHI/JlPNvfYuB5xejSwzMqNd2asfzU2SYxh57ahLVkCoQEhpq
         9VMWHp0eVpsL+emkkKn8DAlL/ru6AKY4KRAAX9Sv3jLZ/guHev8uKfA7K/jNSDBZn4I+
         hL54tujlTRBtpoOwrocymnxDtX+2GkplVCBU7BZT33LCXBcYoK/mxWNxCUt2YueJitHT
         Hh1A==
X-Gm-Message-State: AOAM533j2ClQYoJacoZd4DdtOnH2cRjoh7frDzIa7Zncbwd5TMs9SVEw
	GcwJRyQg6DvN0S1RwjygzLvCqA==
X-Google-Smtp-Source: ABdhPJybrQOUe7Gmll3qfxvYKfipZKjvOVzFjuqtc6eT1LRxqsUlolNivX8Kpu6I0MW80UnE11K4YQ==
X-Received: by 2002:a5d:408e:: with SMTP id o14mr4125624wrp.84.1591706369834;
        Tue, 09 Jun 2020 05:39:29 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id 125sm2959682wmc.23.2020.06.09.05.39.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2020 05:39:29 -0700 (PDT)
Message-ID: <2601797c467332f9f429fb07242676b5d7ae7ffd.camel@linuxfoundation.org>
Subject: Re: [poky] duplicate dtbs in deploydir
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: jonathan.richardson@broadcom.com, poky@yoctoproject.org
Date: Tue, 09 Jun 2020 13:39:28 +0100
In-Reply-To: <d59815969514087c8f97ecee83b3e32e@mail.gmail.com>
References: <d59815969514087c8f97ecee83b3e32e@mail.gmail.com>
User-Agent: Evolution 3.36.2-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2020-06-08 at 11:08 -0700, Jonathan Richardson via
lists.yoctoproject.org wrote:
> Hi,
> 
> Just wondering why there are 2 symlinks to a dtb in the deploy dir.
> It has
> been like this for a while but creates a lot of clutter. It's from
> the
> last 2 lines in kernel-devicetree.bbclass. I was going to clean it up
> but
> wondered if it's there for a reason.. Thanks.
> 
> do_deploy_append() {
> 	for dtbf in ${KERNEL_DEVICETREE}; do
> 		dtb=`normalize_dtb "$dtbf"`
> 		dtb_ext=${dtb##*.}
> 		dtb_base_name=`basename $dtb .$dtb_ext`
> 		install -d $deployDir
> 		install -m 0644
> ${D}/${KERNEL_IMAGEDEST}/$dtb_base_name.$dtb_ext
> $deployDir/$dtb_base_name-${KERNEL_DTB_NAME}.$dtb_ext
> 		ln -sf $dtb_base_name-${KERNEL_DTB_NAME}.$dtb_ext
> $deployDir/$dtb_base_name.$dtb_ext
> 		ln -sf $dtb_base_name-${KERNEL_DTB_NAME}.$dtb_ext
> $deployDir/$dtb_base_name-${KERNEL_DTB_LINK_NAME}.$dtb_ext

Some automated testing code relies upon symlinks in the deploy
directory to find the latest dtb/image/whatever. The symlink names
usually remove elements like date/timestamps.

Whether that is the case here and whether its used or not I'm not sure
but that is why you see these as it saves pattern matching which may
change over time.

Cheers,

Richard

