Return-Path: <jdfalabrac@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF2DEE0079E; Mon, 29 Sep 2014 10:08:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jdfalabrac[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wg0-f68.google.com (mail-wg0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E93F3E006DB
	for <poky@yoctoproject.org>; Mon, 29 Sep 2014 10:08:27 -0700 (PDT)
Received: by mail-wg0-f68.google.com with SMTP id a1so180907wgh.7
	for <poky@yoctoproject.org>; Mon, 29 Sep 2014 10:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=PGb0/8C5fyJviMhZL1UN+q8nXHF/knI4RX2qat1P9tg=;
	b=d3vWXsKJi7h+Po5K1rXpGa+WKQX2kkX0MSGlIlia2egZcegIyWRTZ5mCJRrGTVC0V4
	A4cZx0lxmd5DCIDYbVpRBt8F8CszqwNfoUQauDGv2lrnsNwg9l3sihQ6ejSBxBrdLUZg
	VXCNFZWlk8C3H4prpUDl+dqBQqI3Ho5eAAGgTvWyLJrA6ouNhTJddMMbeoQ777nw2JiR
	h8npqAZl+ApSANqFcONVULt2AcFwiURsjXarKdqodvvK+HjBXiQGaVAIyTdqXuZbrozx
	fRbg7l5n7lKvzf/G7niB+IGrwGvdZjG9CgHaSRXheOZvqYrWmqHY63EN899EAtx9GR3v
	ajhw==
X-Received: by 10.194.95.234 with SMTP id dn10mr47015060wjb.73.1412010506083; 
	Mon, 29 Sep 2014 10:08:26 -0700 (PDT)
Received: from [192.168.43.88] ([94.35.106.130])
	by mx.google.com with ESMTPSA id
	ll20sm12307270wic.14.2014.09.29.10.08.22 for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Sep 2014 10:08:25 -0700 (PDT)
Message-ID: <54299205.1060603@gmail.com>
Date: Mon, 29 Sep 2014 19:08:21 +0200
From: JD <jdfalabrac@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.1
MIME-Version: 1.0
To: poky@yoctoproject.org
Subject: Automounting WLAN0 and auto launching hostapd
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
X-List-Received-Date: Mon, 29 Sep 2014 17:08:32 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello, I apologize for the dumb question but I would like to turn ON 
wlan0 when my USB dongle is inserted and, after that, launch hostapd and 
dnsmasq as well. This on my core-image-minimal derived image.

Could someone please advise just what is the best way to do it on such a 
small footprint image for my embedded board?
I just need a pointer to start from (ifplugd? network manager? udev?)  
to make sure I make the best initial choice...

Thanks
jd

