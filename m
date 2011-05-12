Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3EA7C4C810C3
	for <poky@yoctoproject.org>; Thu, 12 May 2011 16:14:05 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 May 2011 14:14:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,360,1301900400"; d="scan'208";a="746460081"
Received: from doubt.jf.intel.com (HELO [10.7.199.57]) ([10.7.199.57])
	by orsmga001.jf.intel.com with ESMTP; 12 May 2011 14:14:04 -0700
Message-ID: <4DCC4DAF.5070900@linux.intel.com>
Date: Thu, 12 May 2011 14:14:23 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4DCB19C0.3060103@linux.intel.com> <1305192040.30391.487.camel@rex>
In-Reply-To: <1305192040.30391.487.camel@rex>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: directdisk images - replace the image type with a script?
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
X-List-Received-Date: Thu, 12 May 2011 21:14:05 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 05/12/2011 02:20 AM, Richard Purdie wrote:
> On Wed, 2011-05-11 at 16:20 -0700, Darren Hart wrote:
>> I recently discovered that the directdisk images are malformed:
>>
>> http://bugzilla.pokylinux.org/show_bug.cgi?id=1028
>>
>> While reviewing the directdisk recipe, I'm wondering if this image type
>> has any real usage model. These are x86 specific. They partition a file
>> image so when written to a real disk you get goofy partition tables
>> (partitions do not end on cylinder boundaries).
>>
>> The current recipes mangle the .cfg file (writing binary data over the
>> text file - I'm guessing the dd commands do this).
>>
>> We could patch this up, but is it worth it? All the other systems create
>> ext3 images which are then installed on a disk per the instructions in
>> the README.hardware document. The live image provides a simple
>> dd-to-disk-and-boot solution. It seems to me the directdisk idea could
>> be replaced with a script "mksyslinuximage.sh" or similar that took the
>> image and kernel to use and the drive to partition, install syslinux on,
>> and copy the filesystem to.
>>
>> Thoughts?
> 
> We did get requests for that image type but I agree the implementation
> is flawed. The trouble with the ext3 approach is that you depend on the
> user having a script, syslinux installed, maybe knowing the location of
> some syslinux files (vary by distro?), a set of tools, possibly a kernel
> and that they get all the commands/parameters to the script right.
> 
> I strongly dislike the way its currently implemented since it should be
> an image type, not a separate recipe (the same complaint applies to
> -live images).
> 
> Since you've looked at it, is it possible to fix it or are there
> variables that can only be determined when you know the final disk
> geometry?

I could spend some time looking at it. I was hoping to get an idea first
if it even made sense to keep the image type at all. I still believe it
doesn't make sense conceptually and people wanting such images are
better off using a script to write it to a real disk and then creating a
file image of that disk that they can reuse to create identical images
on identical disks.

> 
> The trouble with -live images is that you have to write them somewhere
> secondary to make them persistent or you hit the overhead of ramdisks.
> Its a fairly ugly format and not what some end users want.

I see it as a quick test image. Do others use it for anything else?

> 
> Cheers,
> 
> Richard
> 
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

