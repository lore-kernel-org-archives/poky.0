Return-Path: <kpa_info@yahoo.fr>
Received: from nm19.bullet.mail.ukl.yahoo.com (nm19.bullet.mail.ukl.yahoo.com
	[217.146.183.193])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 29146E0030B
	for <poky@yoctoproject.org>; Tue, 10 Apr 2012 08:36:19 -0700 (PDT)
Received: from [217.146.183.213] by nm19.bullet.mail.ukl.yahoo.com with NNFMP;
	10 Apr 2012 15:36:18 -0000
Received: from [77.238.184.70] by tm6.bullet.mail.ukl.yahoo.com with NNFMP;
	10 Apr 2012 15:36:18 -0000
Received: from [127.0.0.1] by smtp139.mail.ukl.yahoo.com with NNFMP;
	10 Apr 2012 15:36:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s1024;
	t=1334072178; bh=uW3ST+zM5G1tkkhATmWWL0lIbxgF3FHlfcnJHlwPFuo=;
	h=X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:Received:Message-ID:Date:From:User-Agent:MIME-Version:To:Subject:Content-Type:Content-Transfer-Encoding;
	b=1pkgbXeA9rBePFX4mvZColrDYHt6um73lQrYPS5ehundTKBuBXYR72tffZTyElqSPPXhjf9i7rG9eHTEk/pwxcYebxcQv+WdP+/JWbGbkKuUBPseLM9oE3yR4gYUzt8/DTysemTX3DuTTll3gt42saKn9pdoq4HnrqM2ebN8SBY=
X-Yahoo-Newman-Id: 835119.83546.bm@smtp139.mail.ukl.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: jw3TOO4VM1meBS8VczUl3bIcQtMq6ScXTfFfEcHcgeFP83W
	sa4z_.j0yOQ.WPSiAQ5IAxZ1cmXkZk17js1lFfNZfxdPmsrZvkxZxAswRDAC
	tLj3U1HBtH8RqtbVYsaP_3AGDTsyqLQAgFx0tSy41gdL5AB1_H1NDG7wuVMe
	UevxQ4w5zPva3DHjfvZ3KkVYHNIuaJENjeY.WABZ5eHs6yK_4WZgSKNtMaFw
	UFgEnk87BzLbuhPo_XJBaJbrOiuwduRvlNyBB8yo.Qz.hz0T5YOSwHTV7Yw2
	m6rarVireWVbwwUZOC80DRVhdw.zibPV1B6fT6LitJLwjbYj7RY2E.R3LJxx
	wPu8ExDQW43b8EbFbaTAOdcRCBHuilVlm3ams7iQaeLYRyK9hj7hk1yRxgA- -
X-Yahoo-SMTP: gXxkLaeswBDA9gtBSIbQ8XWSflp0
Received: from [192.168.2.63] (kpa_info@213.193.97.58 with plain)
	by smtp139.mail.ukl.yahoo.com with SMTP; 10 Apr 2012 15:36:18 +0000 GMT
Message-ID: <4F845371.9040903@yahoo.fr>
Date: Tue, 10 Apr 2012 17:36:17 +0200
From: Patrick <kpa_info@yahoo.fr>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.28) Gecko/20120313 Lightning/1.0b2 Thunderbird/3.1.20
MIME-Version: 1.0
To: poky@yoctoproject.org
Subject: Qt4 minimal subset
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
X-List-Received-Date: Tue, 10 Apr 2012 15:36:20 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Dear mailinglist,

I am working with yocto 1.1.1, poky 6.0.1. Until now I have build an 
embedded systems without display. Now I would like to add support for a 
small screen with Qt.

I have added to my image the qt4-x11-free recipes. This include so many 
things that I don't need as I am building an embedded system: Demos, 
example, docs, dev tools, ...

Which recipes could I use to include a working subset of Qt with X11 
that include only base libraries and eventually some additional elements.

Thanks in advance for your help !

Patrick

