Return-Path: <kpa_info@yahoo.fr>
Received: from nm18.bullet.mail.ukl.yahoo.com (nm18.bullet.mail.ukl.yahoo.com
	[217.146.183.192])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id C63ABE00723
	for <poky@yoctoproject.org>; Thu, 14 Jun 2012 07:24:43 -0700 (PDT)
Received: from [217.146.183.182] by nm18.bullet.mail.ukl.yahoo.com with NNFMP;
	14 Jun 2012 14:24:42 -0000
Received: from [217.146.182.85] by tm13.bullet.mail.ukl.yahoo.com with NNFMP;
	14 Jun 2012 14:24:42 -0000
Received: from [127.0.0.1] by smtp150.mail.ukl.yahoo.com with NNFMP;
	14 Jun 2012 14:24:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s1024;
	t=1339683882; bh=1cDmz14Qhqn/rDbJGsQuf/TSg0d7Te2LQUk3x6o4iwY=;
	h=X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:Received:Message-ID:Date:From:User-Agent:MIME-Version:To:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=R+jUwFPOc4Nn9X03DN3TfpJ1j9osH/syBHtVaBh+3slzJGjvmRcdsx8Sy3GggMLox/K3/xdw9Prv5xUj3zS7HARz5rUuqw9pbMGRTIBCCpRVXUPNELWny5Kyx5muVjvfRobLy2+AwHz5L3YjTayA9c/d5PNJRlMGc3gsvtGzdrU=
X-Yahoo-Newman-Id: 684841.34503.bm@smtp150.mail.ukl.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: Xpth2cQVM1kzhhb1ZShnLLqHhA2AwTJya4MXsfytbTOCNFK
	O.Q7QZTtdJZxLVPJ5_0R70p_y.mephZTtmHocLr8sraYj_hIAK7SK1UPUETp
	jKwjd3iubS5Y9PiDMhDa08Vin.Qh.e5D9HxkeeJw5SWkmm9aZop0HDojwb93
	M.pf_jP4QtMTNcwqoFb1O112WDeGn8wNPnTqt7KSEQI_VnSdA_FYLCUkeeZv
	F7GKkIdV1GeLSbT7b4CXcNdxwNGx5NoMEqow3tzkrAaqUgWvNSV50s7raONd
	Qnk0cEQCWTEvbI2launWly8Alf8QDiySVLyL3d4jFGLsmHt3ejL6txXUzP5R
	khJifi.eHqJEPHJPs7SRj1a33goWeAlRvdmmIEirMqGs_wUsfNCtBaDOVgg- -
X-Yahoo-SMTP: gXxkLaeswBDA9gtBSIbQ8XWSflp0
Received: from [10.22.2.59] (kpa_info@213.193.97.58 with plain)
	by smtp150.mail.ukl.yahoo.com with SMTP; 14 Jun 2012 07:24:42 -0700 PDT
Message-ID: <4FD9F427.8080706@yahoo.fr>
Date: Thu, 14 Jun 2012 16:24:39 +0200
From: Patrick <kpa_info@yahoo.fr>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4FD753B2.9060705@yahoo.fr> <1339512456.8065.13.camel@ted>
	<4FD83EC0.7050605@yahoo.fr> <1339574880.8065.20.camel@ted>
	<4FD8A5F5.4080001@yahoo.fr> <4FD8B03E.8090408@yahoo.fr>
	<4FD9E759.8010208@yahoo.fr>
In-Reply-To: <4FD9E759.8010208@yahoo.fr>
Subject: Re: Running script after installation (postinst)
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
X-List-Received-Date: Thu, 14 Jun 2012 14:24:44 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 06/14/2012 03:30 PM, Patrick wrote:
> On 06/13/2012 05:22 PM, Patrick wrote:
>> On 06/13/2012 04:38 PM, Patrick wrote:
>>> On 06/13/2012 10:08 AM, Richard Purdie wrote:
>>>> On Wed, 2012-06-13 at 09:18 +0200, Patrick wrote:
>>>>> On 06/12/2012 04:47 PM, Richard Purdie wrote:
>>>>>> On Tue, 2012-06-12 at 16:35 +0200, Patrick wrote:
>>>>>>> Dear all,
>>>>>>>
>>>>>>> In one of our recipes we need to execute a small script after the
>>>>>>> installation of the package. Following yocto dev manual point
>>>>>>> 4.3.6 we
>>>>>>> have added a pkg_postinst function.
>>>>>>>
>>>>>>> This doesn’t work properly as the script is executed at first
>>>>>>> start-up
>>>>>>> and not after installation. Below are an example of this recipe.
>>>>>>>
>>>>>>> Do you have any idea why this script is started as first boot time
>>>>>>> and
>>>>>>> not after installation ?
>>>>>>>
>>>>>>> Thanks in advance for any help !
>>>>>>
>>>>>> We try and run postinstalls "offline" at image creation time. If they
>>>>>> fail, they run at first boot.
>>>>>>
>>>>>> You can tell which context you're in by the contents of the $D
>>>>>> variable
>>>>>> (note, $D, not ${D}). For example, you could therefore do:
>>>>>>
>>>>>>
>>>>>> pkg_postinst_task-system-tweaks () {
>>>>>> #!/bin/sh -e
>>>>>>
>>>>>> #Mount tmprecovery at startup
>>>>>> mkdir -p $D/tmprecovery
>>>>>> mkdir -p $D/data
>>>>>> echo "/dev/mtdblock6 /tmprecovery yaffs2 0 0">> $D/etc/fstab
>>>>>> echo "/dev/mtdblock7 /data yaffs2 noauto 0 0">> $D/etc/fstab
>>>>>>
>>>>
>>>>> The problems when using $D is that the script is executed against the
>>>>> files of the package not against the whole rootfs. For example in the
>>>>> dummy recipes above we change the file $D/etc/fstab that is not in the
>>>>> package of the recipes.
>>>>
>>>> If you reference $D as part of a postinst script, it will run against
>>>> the files of the rootfs, not just the package. There are some problems
>>>> ensuring dependencies are present when this happens though, some
>>>> backends like rpm don't like ensuring that dependencies are present.
>>>>
>>>>> We have also tried to add (R)DEPENDS to the package that contains
>>>>> fstab
>>>>> with no change.
>>>>>
>>>>> Any idea why ?
>>>>
>>>> You would need to add the dependency in and then it sounds like you're
>>>> probably using rpm and it doesn't want to honour the dependency for
>>>> some
>>>> reason. You could add a rootfs post process command to add in what you
>>>> need which would guarantee all the files are present first...
>>>
>>> That's a good idea ! What would be the correct function name ? Something
>>> like do_rootfs_append() ?
>>> In this case do we have to prefix all the path with ${IMAGE_ROOTFS} ?
>>>
>>> Patrick
>>
>> I reply myself:
>> as suggested above, using do_rootfs_append() and ${IMAGE_ROOTFS} it
>> works nicely !
>>
>
> Argh, in fact it doesn't work. The script is executed against right
> files but *after* packaging everything into a single image...
> The script should be executed just before packaging of the image.
>
> Any idea how to do that ?
>
I reply myself, it works with rootfs_rpm_do_rootfs_append instead of 
using do_rootfs_append but I don't know if it's the best way to do.
If you know more recommended way to do feel free to comment here !

Patrick


