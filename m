Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E4D9E00B18; Fri, 13 Apr 2018 17:17:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f171.google.com (mail-pf0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2209E00529
	for <poky@yoctoproject.org>; Fri, 13 Apr 2018 17:17:03 -0700 (PDT)
Received: by mail-pf0-f171.google.com with SMTP id y66so7176370pfi.7
	for <poky@yoctoproject.org>; Fri, 13 Apr 2018 17:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=05hPLCbCsmqd3BmOA199c3h0AHDKzgCygnl2eUuPMNU=;
	b=INbJpQJhYVURwowOURUngYyfc2f4Xb0eTMRnvn6HQ3mmtILlX3UealVAXdYVSD7C6H
	7PUhBIZo7z1FiaQafU3pcZwrvDqc2fz4ds9RPxhS/B5QrvOs3c9T9v5ZVdEEbhYtYcml
	ta5UPp90TtU6tjE6/i86phwWw02eVRxdZEj4cvRylvdpIfgqKhsdoBWob9JfUm9tyXwy
	Dzls/l2DxWOW1/SR7Mm7jgZiumq33m6p7guRIjgTA17BSyOAqwB2WNe48WAgs2g1OG4M
	RmHmVQ2/VYHpVlP3+c2GUSfZA7QaK2uwCrG5YfaEejCJT1bZ10KioSrtDmrSGXvc1r+D
	LdYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=05hPLCbCsmqd3BmOA199c3h0AHDKzgCygnl2eUuPMNU=;
	b=FA/VPtwVCCED5o+26TZqcpJg/BxlAsywHbjRm4i4DFjgfiebQj2vxn0ztA6rhMGXQz
	9fsXJJwFgJNd9BahqKbuXgs/Z3CSoGLz92YXaC0JKzp1S887GOC5jvzb1IH9wFYbXZdG
	H51mkOeseZQxY3ip4U+lhkMjGTRvzJqsMEgx0eSe8kj3+u+YRq+nP773cp9Fb6rzkaGU
	5qdDnNk0cnEmaBCHxBTmEE+BPMBkwO1JNeDOWgoolRHaqcgHgSnk2yE7Bi9fNbJv6eZf
	u+946bjpubYvymxhc/KlOfW4uH4b9fab59exhtylPIi9P7BG1HqzcpLP2NpyORcldxQd
	zE3Q==
X-Gm-Message-State: ALQs6tCKYONKfUT9kMXFXz7aGs+pPvXKvly/fHi6swAwMfYM+aJPds6d
	lGKFW/xnbrA4e4UG00ksfb64Rn9M
X-Google-Smtp-Source: AIpwx4/7KOOD0vXOt+up+YJsXguUErQoXw/J/TtdbvTYXOgvR1/kKKs5otu0EUkEjaNHNrJOQuvcwA==
X-Received: by 10.99.186.72 with SMTP id l8mr5848808pgu.410.1523665022757;
	Fri, 13 Apr 2018 17:17:02 -0700 (PDT)
Received: from hermes.local ([2601:646:8880:466c:4caf:c486:61ac:d2f7])
	by smtp.gmail.com with ESMTPSA id
	p73sm15067591pfa.43.2018.04.13.17.17.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Apr 2018 17:17:02 -0700 (PDT)
To: Aditya Tayade <Aditya.Tayade@kpit.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
References: <MAXPR01MB0348C083A17C72900E72EFCB91BD0@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <986ce412-271e-2aae-854f-5385c141d7ac@gmail.com>
Date: Fri, 13 Apr 2018 17:17:01 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0)
	Gecko/20100101 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <MAXPR01MB0348C083A17C72900E72EFCB91BD0@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
Subject: Re: g++: error: ./examples/calc++/calc++-scanner.cc: No such file or directory
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
X-List-Received-Date: Sat, 14 Apr 2018 00:17:04 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 4/11/18 5:46 AM, Aditya Tayade wrote:
> Hi,
> 
> 
> I am trying run test suite for bison but its throwing some error-
> 
> *g++: error: ./examples/calc++/calc++-scanner.cc: No such file or directory*
> 

this is a generated file, somehow its not being generated may be 
parallel build issue.

> Found some work around-
> *cp Makefile Makefile.bak
> **sed -i '/calc++/d' Makefile
> **make check*
> 
> This helped me to run suite without error. But is it correct solution?
> 
> 
> Regards,
> Aditya Tayade
> 
> 
> 
> This message contains information that may be privileged or confidential 
> and is the property of the KPIT Technologies Ltd. It is intended only 
> for the person to whom it is addressed. If you are not the intended 
> recipient, you are not authorized to read, print, retain copy, 
> disseminate, distribute, or use this message or any part thereof. If you 
> receive this message in error, please notify the sender immediately and 
> delete all copies of this message. KPIT Technologies Ltd. does not 
> accept any liability for virus infected mails.
> 

