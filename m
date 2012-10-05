Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3BE2E0049B
	for <poky@yoctoproject.org>; Fri,  5 Oct 2012 02:40:01 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-113-77.range81-153.btcentralplus.com
	[81.153.113.77]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 7570599A4
	for <poky@yoctoproject.org>; Fri,  5 Oct 2012 10:39:58 +0100 (BST)
Message-ID: <506EAAEC.1050704@r-finger.com>
Date: Fri, 05 Oct 2012 10:39:56 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <CABtOAfw9y1rjQ3YsS42ZiM71nCUtmWVoOkNZiSb7X1r2JXFjcg@mail.gmail.com>
In-Reply-To: <CABtOAfw9y1rjQ3YsS42ZiM71nCUtmWVoOkNZiSb7X1r2JXFjcg@mail.gmail.com>
Subject: Re: docbook-utils-native-0.6.14-r3
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
X-List-Received-Date: Fri, 05 Oct 2012 09:40:02 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/10/12 10:12, Alexander Khryukin wrote:
> | jade: symbol lookup error:
> /home/user/poky/build/tmp/sysroots/x86_64-linux/usr/bin/../../usr/lib/libospgrove.so.0:
> undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocumentE

Looks like the jade executable was not linked against the version of the
lib in your sysroot; try rebuilding openjade-native.

Tomas

