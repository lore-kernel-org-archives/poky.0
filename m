Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.911.1591639710757708755
 for <poky@lists.yoctoproject.org>;
 Mon, 08 Jun 2020 11:08:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@broadcom.com header.s=google header.b=RQyAMcjr;
 spf=softfail (domain: broadcom.com, ip: 140.211.169.56, mailfrom: jonathan.richardson@broadcom.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D877E01CA7; Mon,  8 Jun 2020 11:08:30 -0700 (PDT)
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
	*      [209.85.166.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37669E01CA5
	for <poky@yoctoproject.org>; Mon,  8 Jun 2020 11:08:28 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id r77so6784315ior.3
        for <poky@yoctoproject.org>; Mon, 08 Jun 2020 11:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=from:mime-version:thread-index:date:message-id:subject:to;
        bh=Md5fk/LvxMYNeCnv5pcOR8JJKKWyoRHB+OUZQqhd0k8=;
        b=RQyAMcjrvH6BMxHNG6jeHxaZPjuNynZhUxdSqCjIZK/mavLWpCEpoHvrTeEQ4ssEz1
         Dr05yxs9BFl+AQvph0STyfhILjdGn3tmoD/lSEnVeML0mtaZ5HL7Z5CWlvvEJ7TzUTdv
         HA4VfBL4rkuK1elT34jAn7o5VUmXh9cS7NMYE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:mime-version:thread-index:date:message-id
         :subject:to;
        bh=Md5fk/LvxMYNeCnv5pcOR8JJKKWyoRHB+OUZQqhd0k8=;
        b=rhjelUTtlSB989LFsqyWsbs7uKYmeK8cyCYsSVtSkXC5hIa3/oBUX9iTN+yMtmV82j
         TKCWsf5jIKVOJmlbfhs8Co8XMQOciuuMVaHXiPjWm2yECP+RbnDVTHFRVrK9EdSg7E2d
         VFbzJY4KgFGQPR1k9HvEZRpJ3IP/AKclZmZtOHAvZDkSZwUMnYYPxxWnbKfS3NnINnjQ
         u/WpX0iSXo7EeloujoE2LP+tO8zT+OsDHPL45xe/Hat8yZenKzrwvLogE8Bma+5VPLHe
         0UaJEB2o1kvrDylSKR+uplySfYSkdCD3WvIHXfl/9dHnUZT7TAiDDD1K5AuPXATGKakC
         pVWA==
X-Gm-Message-State: AOAM531Yrc9KhrLVPzKcmfBguT7v9MisAk12aJU7pdmTa9eOLEEH+D6x
	guWgFJUsdMZWvC/vEiWp/IaC1YA/3AyEkLXQ0x7YNNVT
X-Google-Smtp-Source: ABdhPJzuLzbXcffmCr3xzJzdfETrGQyuU6o5aqcjk5XBUaK4PdzuFBqxecOEmTbo1zlwAz4ZvGgjFtMWHRMBKQ5Yx7w=
X-Received: by 2002:a5d:9dd2:: with SMTP id 18mr23123675ioo.196.1591639707952;
 Mon, 08 Jun 2020 11:08:27 -0700 (PDT)
From: "Jonathan Richardson" <jonathan.richardson@broadcom.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdY9vz4WDmFUmV72SqG/qAFSobJgNw==
Date: Mon, 8 Jun 2020 11:08:26 -0700
Message-ID: <d59815969514087c8f97ecee83b3e32e@mail.gmail.com>
Subject: duplicate dtbs in deploydir
To: poky@yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi,

Just wondering why there are 2 symlinks to a dtb in the deploy dir. It has
been like this for a while but creates a lot of clutter. It's from the
last 2 lines in kernel-devicetree.bbclass. I was going to clean it up but
wondered if it's there for a reason.. Thanks.

do_deploy_append() {
	for dtbf in ${KERNEL_DEVICETREE}; do
		dtb=`normalize_dtb "$dtbf"`
		dtb_ext=${dtb##*.}
		dtb_base_name=`basename $dtb .$dtb_ext`
		install -d $deployDir
		install -m 0644
${D}/${KERNEL_IMAGEDEST}/$dtb_base_name.$dtb_ext
$deployDir/$dtb_base_name-${KERNEL_DTB_NAME}.$dtb_ext
		ln -sf $dtb_base_name-${KERNEL_DTB_NAME}.$dtb_ext
$deployDir/$dtb_base_name.$dtb_ext
		ln -sf $dtb_base_name-${KERNEL_DTB_NAME}.$dtb_ext
$deployDir/$dtb_base_name-${KERNEL_DTB_LINK_NAME}.$dtb_ext
