Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAF53E013E9
	for <poky@yoctoproject.org>; Mon, 19 Mar 2012 19:24:17 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 86387F8122F; Mon, 19 Mar 2012 20:24:17 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8F8B4F8122C;
	Mon, 19 Mar 2012 20:24:16 -0600 (MDT)
Message-ID: <4F67EA50.7000708@mlbassoc.com>
Date: Mon, 19 Mar 2012 20:24:16 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: HOB doesn't see my image recipes
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
X-List-Received-Date: Tue, 20 Mar 2012 02:24:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have my own distribution, layered over poky (I use meta & meta-yocto
with my own distribution layers).  HOB doesn't seem to find any of my
[non-yocto] images.

I thought that this was to be fixed so that any recipe which inherited
'image.bbclass' (or relied on one that did) would be listed as an image?

Am I missing something, or is this a bug?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

