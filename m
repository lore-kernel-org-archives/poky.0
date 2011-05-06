Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 54E694C800B0
	for <poky@yoctoproject.org>; Fri,  6 May 2011 14:07:15 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 06 May 2011 12:06:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,327,1301900400"; d="scan'208";a="918999314"
Received: from unknown (HELO [10.255.12.39]) ([10.255.12.39])
	by fmsmga001.fm.intel.com with ESMTP; 06 May 2011 12:06:55 -0700
Message-ID: <4DC446D2.1080301@linux.intel.com>
Date: Fri, 06 May 2011 12:06:58 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: RFC: mkzipimage.sh script
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
X-List-Received-Date: Fri, 06 May 2011 19:07:15 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

The process for creating the USBZIP format usb key images is tedious, so I threw
a script together. I suspect there might be demand for an integrated tool to do
this for the more onerous of the image making processes.

1) Any feedback on this particular script?
2) Should this go to scripts/contrib? 
3) Would an image burning tool (ala unetbootin) be of interest to 
   others?



#!/bin/bash

function usage {
	echo "Usage: $(basename $0) IMAGE DEVICE"
}

function check_device {
	if [ ! -b "$1" ] || [ ! -w "$1" ]; then
		echo "Error opening device '$1'."
		echo "Device should be a writable block device."
		exit 1
	fi
}

if [ $# -ne 2 ]; then
	usage
	exit 1
fi

IMAGE=$1
DEV=$2

if [ ! -f "$IMAGE" ]; then
	echo "Image '$IMAGE' does not exist."
	exit 1
fi

check_device $DEV

HS=$(fdisk -l $DEV | egrep ".*heads.*sectors.*cylinders")
HEADS=$(echo $HS | cut -d' ' -f1)
SECTORS=$(echo $HS | cut -d' ' -f3)

echo "Preparing $DEV, this may take several minutes."
mkdiskimage -4 $DEV 0 $HEADS $SECTORS
if [ $? -ne 0 ]; then
	echo "Error running mkdiskimage."
	exit 1
fi

echo -n "Remove and reinsert the device, then press Enter: "
read
echo -n "Enter the new device name [$DEV]: "
read NEWDEV
if [ -n "$NEWDEV" ]; then
	DEV=$NEWDEV
fi
check_device $DEV

echo -n "Mounting image and device..."
mkdir /tmp/image-$$
mount -o loop $IMAGE /tmp/image-$$
if [ $? -ne 0 ]; then
	echo -e "\nError mounting image."
	exit 1;
fi
mkdir /tmp/dev-$$
mount $DEV\4 /tmp/dev-$$
if [ $? -ne 0 ]; then
	echo -e "\nError mounting device."
	exit 1;
fi
echo "Done"

echo -n "Copying image..."
cp -rf /tmp/image-$$/* /tmp/dev-$$
sync
echo "Done"

echo -n "Installing syslinux..."
syslinux $DEV\4
echo "Done"

echo "Cleaning up..."
umount /tmp/image-$$
rmdir /tmp/image-$$
umount /tmp/dev-$$
rmdir /tmp/dev-$$
echo "Done"

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

