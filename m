Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 47E984C800A9
	for <poky@yoctoproject.org>; Wed,  3 Aug 2011 10:07:00 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Aug 2011 08:06:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,310,1309762800"; d="scan'208";a="33894641"
Received: from unknown (HELO [10.255.14.76]) ([10.255.14.76])
	by orsmga002.jf.intel.com with ESMTP; 03 Aug 2011 08:06:53 -0700
Message-ID: <4E39640C.4030005@linux.intel.com>
Date: Wed, 03 Aug 2011 08:06:52 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13
	Lightning/1.0b3pre Thunderbird/3.1.10
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4E393728.6040309@mlbassoc.com> <4E3939ED.5070608@mlbassoc.com>
In-Reply-To: <4E3939ED.5070608@mlbassoc.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Augmenting base files
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
X-List-Received-Date: Wed, 03 Aug 2011 15:07:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/03/2011 05:07 AM, Gary Thomas wrote:
> On 2011-08-03 05:55, Gary Thomas wrote:
>> I'd like to add some additional files to my build. These are
>> simple scripts, etc, and it makes sense to include them as part
>> of the base-files package for my platform.
>>
>> I tried to use the attached .bbappend file for this. Sadly, after
>> the package fetch/unpack/patch, it has virtually nothing in it
>> and the build fails miserably.
>> ERROR: Function 'base-files: LIC_FILES_CHKSUM points to invalid file:
>> licenses/GPL-2' failed
>>
>> Looking at the work tree:
>> $ ls tmp/work/mytarget-mydistro-linux/base-files-3.0.14-r69.1/
>> license-destdir my_script temp
>>
>> Without the .bbappend, I see this in the work tree:
>> $ ls tmp/work/mytarget-mydistro-linux/base-files-3.0.14-r69
>> deploy-ipks host.conf issue licenses package profile share temp
>> filesystems image issue.net motd packages-split pseudo shells usbd
>> fstab inputrc license-destdir nsswitch.conf pkgdata rotation shlibs
>>
>> Note: I put my script in
>> my-layer/packages/misc/base-files-3.0.14/mytarget/my_script
>>
>> If I replace this line in the .bbappend
>> FILESEXTRAPATHS := "${THISDIR}/${PN}-${PV}"
>> with these (the way I was told to do this when .bbappend first came
>> available):
>> THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
>> FILESPATH =.
>> "${@base_set_filespath(["${THISDIR}/${PN}-${PV}/${MACHINE}"], d)}:"
>> then the recipe works.
>
> Sorry, this doesn't seem to be true - it still has problems either way.
>
> The only way I've been able to get this to work at all is by changing
> SRC_URI
> SRC_URI += "\
> file://my_script \
> "
> No other form seems to work.
>
> A follow up problem is that my script gets installed, but doesn't seem
> to be
> packaged. I get a warning:
> WARNING: For recipe base-files, the following files were installed but
> not shipped in any package:
> WARNING: my_script
> I thought that this line in the main recipe should include my file:
> FILES_${PN} = "/"
> How do I get my script to be included?
>
If it's simply your script, then you could try

FILES_${PN} += "my_script"

> Note: this is becoming such a pain, I'll probably just write a special
> recipe
> for it even though I think it makes sense to do it like I've been
> attempting...
>
It does make sense, not sure what's going on, but you could file a bug

Sau!

>>
>> Obviously, I've done something major to upset things and/or I don't
>> understand
>> FILESEXTRAPATHS which I think should just add to the current list of
>> places to
>> satisfy SRC_URI.
>>
>> Ideas what I've done wrong?
>>
>>
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>

