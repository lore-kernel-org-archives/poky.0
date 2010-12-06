Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id B4DC94C80050
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 13:48:29 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn7 with SMTP id 7so133725iwn.35
	for <poky@yoctoproject.org>; Mon, 06 Dec 2010 11:48:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:content-type;
	bh=IawqZZdwZSDBBs3YgQS7Y909u0l5N9KYBNjQv6EJN3E=;
	b=MasXeJ85e96ExqpjRMVI3vJZHaGQelec0KhAJgrDT6eWSrXgI99hqXibEHbhgNlLb2
	4EnRdWnJ9rw3SffW65hJxNhCG1JPWztVn2HTD7bbULwxj/HBoQGsRN29Qc3UU7JIKz/K
	jNbSwzPdeNgweSUwEGFsWwlWz3l4GVjSuDtyA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=SpxMnoSwTgaPiTs83cdjvWqiKYsmCz7XQ/jwV8hbEBK2P1TjGBjPT/dW0ot6VM1xa1
	rUpUwKSxgglHo4b7EPTXdULYMi9ufoO0ktRYmqb1iCCHku1lWWYjqDXoXkyHqzpgF7ip
	Lfrgiip+fVX9+tXncrE0oGPNMHRjzA4omZVX4=
MIME-Version: 1.0
Received: by 10.231.20.65 with SMTP id e1mr6412704ibb.32.1291664908427; Mon,
	06 Dec 2010 11:48:28 -0800 (PST)
Received: by 10.231.200.140 with HTTP; Mon, 6 Dec 2010 11:48:28 -0800 (PST)
Date: Mon, 6 Dec 2010 20:48:28 +0100
Message-ID: <AANLkTi==kWiyOrmeUeUVNeC8FT0B8XxruHA0X4qMaPs_@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: openembedded-devel@lists.openembedded.org, poky@yoctoproject.org
Subject: libcdaudio license issue
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
X-List-Received-Date: Mon, 06 Dec 2010 19:48:30 -0000
Content-Type: text/plain; charset=ISO-8859-1

I was checking libcdaudio for LICENSE info.
recipe says GPL
COPYING file is the GPLv2 one
README file says:

libcdaudio is distributed under the GNU Library General Public
License, included in this package under the top level source directory
in the file COPYING

C files also mention LGPL. but say v2 or later

What to do with this in the LICENSE field? LGPLv2+ ?

Frans

