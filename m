Return-Path: <alexander@mezon.ru>
Received: from mail.mezon.ru (mail.mezon.ru [188.127.253.33])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8397E0049D
	for <poky@yoctoproject.org>; Fri,  5 Oct 2012 02:43:19 -0700 (PDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by mail.mezon.ru (Postfix) with ESMTP id DAA711CD778
	for <poky@yoctoproject.org>; Fri,  5 Oct 2012 13:43:04 +0400 (MSK)
X-Virus-Scanned: amavisd-new at mezon.ru
Received: from mail.mezon.ru ([127.0.0.1])
	by localhost (stream2.mezon.ru [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7iGgaDSVhs0O for <poky@yoctoproject.org>;
	Fri,  5 Oct 2012 13:43:03 +0400 (MSK)
Received: from gate-obit.mezon.ru (gate-obit.mezon.ru [37.77.135.198])
	by mail.mezon.ru (Postfix) with ESMTP id E1DF11CD741
	for <poky@yoctoproject.org>; Fri,  5 Oct 2012 13:43:03 +0400 (MSK)
Received: from [192.168.0.206] (fdkit.mezon.lan [192.168.0.206])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by gate-obit.mezon.ru (Postfix) with ESMTP id CBBA1D70028
	for <poky@yoctoproject.org>; Fri,  5 Oct 2012 13:43:03 +0400 (MSK)
Message-ID: <1349430119.32599.0.camel@localhost>
From: Alexander Khryukin <alexander@mezon.ru>
Cc: poky@yoctoproject.org
Date: Fri, 05 Oct 2012 13:41:59 +0400
In-Reply-To: <506EAAEC.1050704@r-finger.com>
References: <CABtOAfw9y1rjQ3YsS42ZiM71nCUtmWVoOkNZiSb7X1r2JXFjcg@mail.gmail.com>
	<506EAAEC.1050704@r-finger.com>
Organization: mezon.ru
X-Mailer: Evolution 3.2.3 
Mime-Version: 1.0
Subject: Re: docbook-utils-native-0.6.14-r3
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: alexander@mezon.ru
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 05 Oct 2012 09:43:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

В Пт., 05/10/2012 в 10:39 +0100, Tomas Frydrych пишет:
> On 05/10/12 10:12, Alexander Khryukin wrote:
> > | jade: symbol lookup error:
> > /home/user/poky/build/tmp/sysroots/x86_64-linux/usr/bin/../../usr/lib/libospgrove.so.0:
> > undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocumentE
> 
> Looks like the jade executable was not linked against the version of the
> lib in your sysroot; try rebuilding openjade-native.
> 
> Tomas
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


>try rebuilding openjade-native

How i can do it?Now i'm rebuilding bitbake core-image-sato-sdk again



