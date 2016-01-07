Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3494E00CB1; Thu,  7 Jan 2016 05:12:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADC46E0090E
	for <poky@yoctoproject.org>; Thu,  7 Jan 2016 05:12:40 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 07 Jan 2016 05:12:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,533,1444719600"; d="scan'208";a="722014573"
Received: from linux.intel.com ([10.23.219.25])
	by orsmga003.jf.intel.com with ESMTP; 07 Jan 2016 05:12:39 -0800
Received: by linux.intel.com (Postfix, from userid 48)
	id DDC9D6A4006; Thu,  7 Jan 2016 06:00:37 -0800 (PST)
Received: from 10.252.19.48 (SquirrelMail authenticated user alexander.kanavin)
	by linux.intel.com with HTTP; Thu, 7 Jan 2016 16:00:37 +0200 (EET)
Message-ID: <51910.10.252.19.48.1452175237.squirrel@linux.intel.com>
In-Reply-To: <CAFNP8Ovaqt-L6Re6M4dz3O5qaj83-BNrXcfR+yH6bXwyB-0C4A@mail.gmail.com>
References: <cover.1449152326.git.alexander.kanavin@linux.intel.com>
	<CAFNP8Ovaqt-L6Re6M4dz3O5qaj83-BNrXcfR+yH6bXwyB-0C4A@mail.gmail.com>
Date: Thu, 7 Jan 2016 16:00:37 +0200 (EET)
From: alexander.kanavin@linux.intel.com
To: "Scott Rifenbark" <srifenbark@gmail.com>
User-Agent: SquirrelMail/1.4.8-5.el4.centos.8
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] Remove qt4 references from poky
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
X-List-Received-Date: Thu, 07 Jan 2016 13:12:43 -0000
Content-Type: text/plain;charset=iso-8859-1
Content-Transfer-Encoding: 8bit

> There are some references to qt4 in the YP Reference Manual.  Can you tell
> me if these simply need removed from the documentation?  Or, if some
> modification is necessary for each.  Here they are:
>
> http://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.html#migration-2.0-Gstreamer-0.10-removed

This is in a section about updating to YP2.0. That version is not
affected, and will continue to carry Qt4 packages.

But you probably do want to add a note to a similar section about moving
to YP2.1. Something along these lines:

"Qt4 recipes and classes have been removed in YP 2.1 because Qt4.x has
reached end of life upstream. For legacy applications and LSB compliancy
purposes Qt4 can be found in meta-qt4 repository, and for any new
development Qt5 is available at meta-qt5 repository(provide links to
both)."

> http://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.html#ref-classes-qt4*

Should be removed, also remove the preceding qmake* section.

> http://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.html#ref-images
> - Last item in that list.

Should be removed.

> http://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.html#ref-features-image
> - There is a "qt4-pkgs" item in the second list of this section.

Should be removed.

There are also a few references to Qt in general in the same manual (e.g.
recipes-qt, COMMERCIAL_QT, do_generate_qt_config), those should be removed
as well. Let me know if you need specific guidance for them, or I can
review your documentation patch.

Thanks,
Alex

