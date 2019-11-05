Return-Path: <hannandor@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEA33E007AE; Tue,  5 Nov 2019 01:01:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (hannandor[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
	[209.85.167.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AE29E007AE
	for <poky@yoctoproject.org>; Tue,  5 Nov 2019 01:01:09 -0800 (PST)
Received: by mail-lf1-f46.google.com with SMTP id 195so14464819lfj.6
	for <poky@yoctoproject.org>; Tue, 05 Nov 2019 01:01:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language;
	bh=ggMnDGOmIN5qvJay/+GlgsRLRu/vysdDuilZzYfJ3gM=;
	b=ZwyOeOCdbXCUGShtqWnX0Pc/B6tCknfzmL8rxOw4qkr6WgvVhTerzcs94Y/D/1n/Go
	6MW7jQGgcHcsbXCvgQIfzStxVDyt90RwWE1RngTavfQbP49nTcY1qRrML5wUhcmzb+CU
	HfXbcxnpFB/P6MTyzPxu2CieCnr6z3l5No/WV7UuroibrRQ8aS0hq4cY2YP8FKUy/mT5
	8s2VOeQ1BDDN7fiOAn0coTyg6vfIHem55/k8dasb38poCX/mg6JzlcPkgLPjC2IssyLM
	gBZIPzF0MyGNDoM9ApiLmGQFhzdd3QU/59KrfWSerSijKsUXbudSlZis7AZqYUCLfnwM
	qKSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language;
	bh=ggMnDGOmIN5qvJay/+GlgsRLRu/vysdDuilZzYfJ3gM=;
	b=OCxk7+/mS/sdE7OreqKSLiH+g/26r1ZTTsnJ/zbG6LCkXL8DrHMhMdkGguVMN2Y0D+
	R9iVSlrcMJGvl2yU2Dd7NfKbaCK7suEmDpUX93aDF/2ft3GI1VMaO7Jr7ybH7ynr/XjL
	UPtC/h2Xu9lkO4y7zFFB51UWoehpPI0Rkbsy4rZYr6rdsJORMjhkfY20RFRRgsNwUYks
	usMZdjP5sDfEhi8rf4dJvtahJbzLGKEt3c/HiUFvMuQkPmCSKDKcqYXc26NmdKxCuX48
	SN3qB5YzmjwFrxndYzVtLth2GLRTYhAeap+7ZY2SxzjYsKhztnmUynNuH6b9OduRdrm3
	J+mQ==
X-Gm-Message-State: APjAAAWJrxMZgB9EhibxOkAp8CELMV17NmBv/hAcZXEG+k97aJockLhS
	6LjmTBRWvY5QTT/5zRDBWQ/FVkFK
X-Google-Smtp-Source: APXvYqxcIAMYI5stY2iKnfSCMSSvoMbbDcdCfBKuWGzX0WC40az7eOKBiZ8DOvjg7O3tvZw0+JjWdA==
X-Received: by 2002:a19:23d7:: with SMTP id j206mr391106lfj.187.1572944467387; 
	Tue, 05 Nov 2019 01:01:07 -0800 (PST)
Received: from localhost.localdomain (hel-inetgw01.vaisala.com.
	[193.143.230.131])
	by smtp.gmail.com with ESMTPSA id f3sm2372969lfp.0.2019.11.05.01.01.06
	for <poky@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 05 Nov 2019 01:01:06 -0800 (PST)
To: poky@yoctoproject.org
From: Nandor Han <hannandor@gmail.com>
Message-ID: <1212f0fd-88e7-a447-a32b-f5caf37408a3@gmail.com>
Date: Tue, 5 Nov 2019 11:01:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
Subject: Website certificate expired
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
X-List-Received-Date: Tue, 05 Nov 2019 09:01:16 -0000
Content-Type: multipart/alternative;
	boundary="------------16981883A2B43617D4EB881C"
Content-Language: en-US

--------------16981883A2B43617D4EB881C
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,
    Just a reminder that `https://www.yoctoproject.org/` website 
certificate expired.
(

Issued On
Wednesday, August 7, 2019 at 9:47:07 AM
Expires On
Tuesday, November 5, 2019 at 8:47:07 AM

)

Regards,
     Nandor


--------------16981883A2B43617D4EB881C
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi,<br>
         Just a reminder that `<a href="https://www.yoctoproject.org/">https://www.yoctoproject.org/</a>`
      website certificate expired. <br>
      (</p>
    <div style="display: table-row; color: rgb(0, 0, 0); font-family:
      &quot;DejaVu Sans&quot;, Arial, sans-serif; font-size: 12px;
      font-style: normal; font-variant-ligatures: normal;
      font-variant-caps: normal; font-weight: 400; letter-spacing:
      normal; orphans: 2; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(251, 251, 251); text-decoration-style:
      initial; text-decoration-color: initial;">
      <div class="attribute" style="display: table-cell; white-space:
        nowrap; color: rgb(120, 120, 120); line-height: 18px;
        padding-inline-start: 20px;">Issued On</div>
      <div id="issue-date" class="value" style="display: table-cell; white-space: pre-wrap; color: rgb(120, 120, 120); line-height: 18px; padding-inline-start: 20px;">Wednesday, August 7, 2019 at 9:47:07 AM</div>
    </div>
    <div style="display: table-row; color: rgb(0, 0, 0); font-family:
      &quot;DejaVu Sans&quot;, Arial, sans-serif; font-size: 12px;
      font-style: normal; font-variant-ligatures: normal;
      font-variant-caps: normal; font-weight: 400; letter-spacing:
      normal; orphans: 2; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(251, 251, 251); text-decoration-style:
      initial; text-decoration-color: initial;">
      <div class="attribute" style="display: table-cell; white-space:
        nowrap; color: rgb(120, 120, 120); line-height: 18px;
        padding-inline-start: 20px;">Expires On</div>
      <div id="expiry-date" class="value" style="display: table-cell; white-space: pre-wrap; color: rgb(120, 120, 120); line-height: 18px; padding-inline-start: 20px;">Tuesday, November 5, 2019 at 8:47:07 AM</div>
    </div>
    <p>)<br>
    </p>
    <p>Regards,<br>
          Nandor<br>
    </p>
  </body>
</html>

--------------16981883A2B43617D4EB881C--
