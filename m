Return-Path: <kpa_info@yahoo.fr>
Received: from nm23-vm4.bullet.mail.ird.yahoo.com
	(nm23-vm4.bullet.mail.ird.yahoo.com [212.82.109.233])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id D6C7EE0030B
	for <poky@yoctoproject.org>; Wed, 25 Apr 2012 08:56:12 -0700 (PDT)
Received: from [77.238.189.50] by nm23.bullet.mail.ird.yahoo.com with NNFMP;
	25 Apr 2012 15:56:11 -0000
Received: from [217.146.189.97] by tm3.bullet.mail.ird.yahoo.com with NNFMP;
	25 Apr 2012 15:56:11 -0000
Received: from [127.0.0.1] by smtp113.mail.ird.yahoo.com with NNFMP;
	25 Apr 2012 15:56:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s1024;
	t=1335369371; bh=N/zRq7rJPQKXfOsl9zi4za5yTZkcGC3ri8vYp57QkK8=;
	h=X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:Received:Message-ID:Date:From:User-Agent:MIME-Version:To:Subject:Content-Type:Content-Transfer-Encoding;
	b=4ZlqORaAiC9BXxazKpM+r8oczLRfScrKuL95yatxMJEpinHdTNCa4sR7uuDTU6Jpm1RFrWc+BZCQsOUm7Hmn4rt3/VVhNIaet1PZjTDc5E+a2btZVugshdJ6RGuGiI2dr6c6FREm76Lq5UgO4obgtoqozMP2IJ4aAUlqQ5vOKCM=
X-Yahoo-Newman-Id: 265130.52268.bm@smtp113.mail.ird.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: _IsFqnMVM1nyvWpXTRovK1GgBXmBvW0z1gVCmAjQpe1bK9H
	DyzimirZCMEcxQGQ43lM9sOfBhX2aUGhc42gYfxzwOD3xqqvj7A3uwPJ.J4D
	OHCIpSMPfjoNWjXD6cSkP9kq6y6ioQPGQnOfgUb6QAhvHrDib7.WeMHlCBqj
	tRsghcICoMRgYMU_g46NnqBN8LCAkXy5l6WMFIL2FESc7BG8i20FY59166b5
	S_6PgO2V_ztF7rXZZic82IB8rayjotveCE_yk_f5XLUjUm1rQ9Q3AXGrRGU5
	NQb8ebSL95xTL9FcO7VFluj9NAz3pXh91N_behuUDn6IN6F2YkX2mcooLbAw
	rKUvbFFDfxZ7931lsKExkZIR0aFlbRIS12hYy34tmlqvOigv4UoBoFumtYA- -
X-Yahoo-SMTP: gXxkLaeswBDA9gtBSIbQ8XWSflp0
Received: from [192.168.2.63] (kpa_info@213.193.97.58 with plain)
	by smtp113.mail.ird.yahoo.com with SMTP; 25 Apr 2012 08:56:11 -0700 PDT
Message-ID: <4F981E9A.5050704@yahoo.fr>
Date: Wed, 25 Apr 2012 17:56:10 +0200
From: Patrick <kpa_info@yahoo.fr>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.28) Gecko/20120313 Lightning/1.0b2 Thunderbird/3.1.20
MIME-Version: 1.0
To: poky@yoctoproject.org
Subject: Include already exisiting rpm or .spec
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 25 Apr 2012 15:56:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Dear all,

We have some software that we develop from a while that we release as 
rpm. To build these rpm we have some complexe .spec files.

Now we use Yocto/Poky to build many new elements and I would like to 
include in my rootfs generated with Yocto/Poky some of our "old" 
software. We don't want to manage the bitbake recipes and the .spec for 
each of our "old" software.

I then would like to know if I could made a simple bitbake recipes that 
"call/include/use" the .specs files ?
Another solution would be to include directly the rpm to the final 
image. Do you think that it's possible ?

Thanks in advance for idea or hint

Patrick

