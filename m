Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29ABCE0076F; Tue,  3 Feb 2015 08:31:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D581E005B4
	for <poky@yoctoproject.org>; Tue,  3 Feb 2015 08:31:27 -0800 (PST)
Received: by mail-pa0-f54.google.com with SMTP id eu11so98143620pac.13
	for <poky@yoctoproject.org>; Tue, 03 Feb 2015 08:31:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=UsB5lOqRWeGHxhOZxXvbIHHyG8j+VnRVWEwZzc/FiKc=;
	b=FzqFSbM34yRlQcjLN+Zs/svkXUv2uPq3QEjfEMvlZYlJSetfWUHPlnepFPRKqRyaE3
	+O6C6GsbEOsv8sEpMdgLWZ2mGZD2qEDYP+aaIRV1JzV+UUlCUrNIgYBcPtt+Ok6vIsjy
	qas+bGTTFJgVWXF7SS8aw9BmkyDMr6nHY6kUC07/aYi0QB+UIsnndrcl4Yge3qcPSPru
	RPaeH120MsJ/WGmk80PrnuFEqz1TdqIak46tF7rXzHvnMD/34Fk60lr+Qa5y/MfvJ8cv
	anBAUNVdtQ6k02eZ4oSaURD/tEInRbSIhLdeXZobeC6K8+pk0Mr2DkU3vQFDn3WpMbbn
	GSwQ==
X-Received: by 10.66.100.230 with SMTP id fb6mr39705883pab.156.1422981086935; 
	Tue, 03 Feb 2015 08:31:26 -0800 (PST)
Received: from ?IPv6:2601:c:a700:272f:7566:f05c:29ae:4e9b?
	([2601:c:a700:272f:7566:f05c:29ae:4e9b])
	by mx.google.com with ESMTPSA id y4sm2629274pdj.59.2015.02.03.08.31.24
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 03 Feb 2015 08:31:25 -0800 (PST)
Message-ID: <54D0F7D7.2060807@gmail.com>
Date: Tue, 03 Feb 2015 08:31:19 -0800
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@linux.intel.com>
References: <cover.1422459700.git.tom.zanussi@linux.intel.com>
	<1422968382.18649.4.camel@picadillo>
In-Reply-To: <1422968382.18649.4.camel@picadillo>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1 v2][dizzy] yocto-bsp fix
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
X-List-Received-Date: Tue, 03 Feb 2015 16:31:39 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

merged into staging.

- armin

On 02/03/2015 04:59 AM, Tom Zanussi wrote:
> ping
>
> On Wed, 2015-01-28 at 09:49 -0600, Tom Zanussi wrote:
>> This patchset contains a fix for Yocto Bug 6518 (yocto-bsp create
>> creates faulty SRC_URI).  Please apply to dizzy-next.
>>
>> Changes since v1:
>>   * the wrong patch was sent for v1 - v2 adds the right one.
>>
>> The following changes since commit 9fc095a439c36014c73b3a8f240afba09fe0e4d7:
>>
>>    image.bbclass: avoid boot error on read-only systemd image (2015-01-15 16:01:47 +0000)
>>
>> are available in the git repository at:
>>
>>    git://git.yoctoproject.org/poky-contrib.git tzanussi/custom-kbranch-dizzy-v2
>>    http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/custom-kbranch-dizzy-v2
>>
>> Tom Zanussi (1):
>>    yocto-bsp: Add branch to SRC_URI for custom kernels
>>
>>   .../{{ if kernel_choice == \"custom\": }} linux-yocto-custom.bb"      | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> --
>> 1.9.3
>>
>
>

