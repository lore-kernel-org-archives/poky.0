Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id D283E4C80332
	for <poky@yoctoproject.org>; Mon, 11 Jul 2011 11:15:32 -0500 (CDT)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1QgJ8u-0003DM-7B from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Mon, 11 Jul 2011 09:15:32 -0700
Received: from SVR-ORW-FEM-05.mgc.mentorg.com ([147.34.97.43]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Mon, 11 Jul 2011 09:14:04 -0700
Received: from [172.30.80.17] (147.34.91.1) by svr-orw-fem-05.mgc.mentorg.com
	(147.34.97.43) with Microsoft SMTP Server id 14.1.289.1;
	Mon, 11 Jul 2011 09:15:31 -0700
Message-ID: <4E1B218F.9070200@mentor.com>
Date: Mon, 11 Jul 2011 09:15:11 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4E1B0525.4030107@mlbassoc.com> <1310396843.20015.965.camel@rex>
	<4E1B1382.4070203@mlbassoc.com>
In-Reply-To: <4E1B1382.4070203@mlbassoc.com>
X-Enigmail-Version: 1.1.1
X-OriginalArrivalTime: 11 Jul 2011 16:14:04.0124 (UTC)
	FILETIME=[8D8499C0:01CC3FE5]
Subject: Re: UBIFS images
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
X-List-Received-Date: Mon, 11 Jul 2011 16:15:33 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 07/11/2011 08:15 AM, Gary Thomas wrote:
> On 07/11/2011 09:07 AM, Richard Purdie wrote:
>> On Mon, 2011-07-11 at 08:13 -0600, Gary Thomas wrote:
>>> I'm trying to use UBIFS on my target and I found that the images
>>> are not quite right.  The soft-link points to the wrong file.
>>>
>>> $ ls -l tmp/deploy/images/*ubi*
>>> -rw-r--r-- 1 gthomas gthomas 7483392 Jul 11 07:56
>>> tmp/deploy/images/my_distro-console-image-my_target-20110711135454.ubifs.img
>>>
>>> lrwxrwxrwx 1 gthomas gthomas      62 Jul 11 07:56
>>> tmp/deploy/images/my_distro-console-image-my_target.ubifs -> 
>>> my_distro-console-image-my_target-20110711135454.rootfs.ubifs
>>>
>>> I've looked through meta/classes/image_types.bbclass but it's not
>>> clear to me [yet] where that soft-link gets built and why it gets
>>> it wrong.
>>>
>>> Any pointers?
>>
>> image_types.bbclass:
>>
>> ln -s ${IMAGE_NAME}.rootfs.${type}
>> ${DEPLOY_DIR_IMAGE}/${IMAGE_LINK_NAME}.${type}
>>
>> The problem is that $type=ubifs but the extenstion the ubifs image
>> generates is ubifs.img:
>>
>> IMAGE_CMD_ubifs = "mkfs.ubifs -r ${IMAGE_ROOTFS} -o
>> ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.ubifs.img ${MKUBIFS_ARGS}"
>>
>> and we don't support generating image types where the image extension
>> and the type name differ...

This might be a little problematic, or maybe it's all just in my head
since we want a way to try and encourage folks to use the right part of
the ubi dance and not the wrong part (which is to say the image that
contains the ubifs and not just the ubifs itself).

>> I'd guess the quick fix is s/ubifs.img/ubifs/ in the above...
> 
> Thanks
> 
> A bigger question is why is there an unused image command (IMAGE_CMD_ubi)
> which seems to do it right and also sets up a proper volume layout vs
> the current command (IMAGE_CMD_ubifs) which is incorrect?

I think part of the problem is that oe-core and oe-classic are out of
sync here as there was a symlink problem a while back.

-- 
Tom Rini
Mentor Graphics Corporation

