Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.21352.1581477418399512290
 for <poky@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 19:16:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SifM+5VC;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EFCCE0167E; Tue, 11 Feb 2020 19:16:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3562E007EE
	for <poky@yoctoproject.org>; Tue, 11 Feb 2020 19:16:57 -0800 (PST)
Received: by mail-pf1-f182.google.com with SMTP id 185so492301pfv.3
        for <poky@yoctoproject.org>; Tue, 11 Feb 2020 19:16:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=6/euec5RR2FwGizBLbk0RfEGxD2rqIfBImLgvYafGGo=;
        b=SifM+5VCJgA5DbzCHQl3sDCSQhtwATaMl9TsLz06+l6C17HO2jY15GSdIAnWwz2Exh
         Tu6yykuxx1l+Th89OzIaBVPlsYjh6cy64NxxXfVfWQNVVxA5Xy0/OVSYuy1u4rzbrW//
         b8BPG+apH1Eifhkdfa2Bocj5n5GDB2+ibHJQYOr9j4GgazTkaC3cxVBDXw8fP5kQCMOF
         Z59NsmaAec9V6kV3OBOAXcM++BFc6XGvFBVOwmizuyZ4ShAOdl9qMWxJwNCJT2Yn+nJ6
         VxB1J5TiI4qY/kkdETDpxrnu9LswLY7hnayLiu0yyfeYwueeGViyCTBn8W/lYrqZTSd3
         KOrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=6/euec5RR2FwGizBLbk0RfEGxD2rqIfBImLgvYafGGo=;
        b=t9vAxwm5C+fhMEF9SBrJy//fP8/4X4DpPbm5IGdAxTJrPA20Z/pqe6nS1mnJk0CGfz
         7dVtVlNpmM6YrwYESTbwY7/Rd91JUZPIqcqF+Bh47DPXdoL3xLa3CFwmHe8gIqPaxOwF
         RLSnauFazT+piCekZxpnDUDRX1L61Phhcf74ECKk4Xawm2mMVhHCJEdCskqU21Ytxjmp
         kmVnqVMVx7JWw1hEPfCWs5k3ZPl0/kPrj3PCLUgC8Z0WKnh1GAN4VTo2wqqkqnFFTzeb
         JG7Hxjwma0w9/AiN3UfI8WaJFyjGu6gK2MPjwqzXa4vj6ZVQFTH9t6WC1H0buwiRRBp6
         H9rQ==
X-Gm-Message-State: APjAAAVUBMi+4jZEgBWiYiRj7/B4aEcDFiUdaBTQ9F+pB71OpwacJd2G
	Odh/kpc2iu1rZxHazXBRNGpK3LbO
X-Google-Smtp-Source: APXvYqxkCq3qORqeTlqBOWSJTjkINxdXbAjMieaaulNYMhhnGtrZwy9wQVfZysmdmDnb/VKq4myPMg==
X-Received: by 2002:a62:17c1:: with SMTP id 184mr6506289pfx.207.1581477417188;
        Tue, 11 Feb 2020 19:16:57 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:8943:d24d:d5b0:e1fb? ([2601:202:4180:a5c0:8943:d24d:d5b0:e1fb])
        by smtp.gmail.com with ESMTPSA id 199sm6050192pfu.71.2020.02.11.19.16.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 19:16:56 -0800 (PST)
Subject: Re: [poky] testimage gcc error
To: Denys Dmytriyenko <denis@denix.org>,
 Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Jon Mason <jdmason@kudzu.us>, poky@yoctoproject.org
References: <CAPoiz9z_CX0A0vii6w8d+D+csgF3eoxweTF-gkvx58te+6hx5w@mail.gmail.com>
 <d8b27040725d248c5fc498131a08584ee5cc7785.camel@linuxfoundation.org>
 <20200211214956.GU4735@denix.org>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <81986098-aeb2-9d9b-c6b9-a6de971c72e8@gmail.com>
Date: Tue, 11 Feb 2020 19:16:55 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200211214956.GU4735@denix.org>
Content-Type: multipart/alternative;
 boundary="------------8C685AD6165644AD4FF51B3E"
Content-Language: en-US

--------------8C685AD6165644AD4FF51B3E
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 2/11/20 1:49 PM, Denys Dmytriyenko wrote:
> On Tue, Feb 11, 2020 at 09:31:49PM +0000, Richard Purdie wrote:
>> On Tue, 2020-02-11 at 14:31 -0500, Jon Mason wrote:
>>> I'm seeing multiple "Command not found" errors when I run the
>>> testimage command on zeus with GCC added.  I'm sure others are
>>> testing
>>> this and not seeing an issue.  So, please let me know what I'm doing
>>> wrong.
>>>
>>> My only configuration was to add to local.conf (aside from SSTATE_DIR
>>> and DL_DIR) is:
>>> INHERIT += "testimage"
>>> IMAGE_INSTALL_append = " autoconf make gcc "
>> If you put gcc-symlinks and maybe binutils-symlinks in there, does it
>> work better? Suggests we may have some gremlins in the packages used to
>> enable the tests if so...
> Maybe try IMAGE_INSTALL_append = " packagegroup-core-buildessential"

Just curious. Do you see this on Master?

- armin
>
>
> 


--------------8C685AD6165644AD4FF51B3E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 2/11/20 1:49 PM, Denys Dmytriyenko
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20200211214956.GU4735@denix.org">
      <pre class="moz-quote-pre" wrap="">On Tue, Feb 11, 2020 at 09:31:49PM +0000, Richard Purdie wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">On Tue, 2020-02-11 at 14:31 -0500, Jon Mason wrote:
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">I'm seeing multiple "Command not found" errors when I run the
testimage command on zeus with GCC added.  I'm sure others are
testing
this and not seeing an issue.  So, please let me know what I'm doing
wrong.

My only configuration was to add to local.conf (aside from SSTATE_DIR
and DL_DIR) is:
INHERIT += "testimage"
IMAGE_INSTALL_append = " autoconf make gcc "
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
If you put gcc-symlinks and maybe binutils-symlinks in there, does it
work better? Suggests we may have some gremlins in the packages used to
enable the tests if so...
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Maybe try IMAGE_INSTALL_append = " packagegroup-core-buildessential"</pre>
    </blockquote>
    <br>
    Just curious. Do you see this on Master?<br>
    <br>
    - armin<br>
    <blockquote type="cite" cite="mid:20200211214956.GU4735@denix.org">
      <pre class="moz-quote-pre" wrap="">

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------8C685AD6165644AD4FF51B3E--
