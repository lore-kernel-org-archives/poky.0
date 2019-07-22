Return-Path: <wbourque@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E141E00D00; Mon, 22 Jul 2019 06:34:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (wbourque[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
	[209.85.210.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FD87E00A49
	for <poky@yoctoproject.org>; Mon, 22 Jul 2019 06:34:03 -0700 (PDT)
Received: by mail-ot1-f46.google.com with SMTP id x21so1752422otq.12
	for <poky@yoctoproject.org>; Mon, 22 Jul 2019 06:34:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=rwZiQ0oQFu8Q4JKpXLMzda49Ktq4uezCEDVEfb8a6bk=;
	b=ToOQQs/mGJxkJTS8majElRjxKQPO+0zJfVOoC2zxKLa5lKDJQ+CHKimYjOUAvmmo/3
	CyJKMj1XDP80opEtiSzZ93DvWt5O+3HqHMD782gLGqZC4mPkeeRHM3VdO6kfrNEo509S
	McxY8i2FYzbRU/prIYXa8UGGQjOB3cCJw0txOmwkphA1J3Cp27g457Gwszx0wjonusV5
	8518Qai0uxAFOL43aNYLVTZjtLggvsW4rbXnQTsVovlM9A/4FeGxH4iPnAWEt6BdcJ3a
	rGDtVEws/kuLSJNrEiclfqZtGlYfEWaec/ZVvyufqD7/HRQ0B4iUJa16whotL5z0quYi
	/DEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=rwZiQ0oQFu8Q4JKpXLMzda49Ktq4uezCEDVEfb8a6bk=;
	b=P1BrK9zAHA6X7o9jQkrqdrtgrt3b/A7A/T+Y9Lh4VfIkATBbmImCfNbbXN0w2suQ5Q
	X7Zi509zkUShOe1nBKR1lxd3NfoG7v7q80haIYirf/IlNL7ZqdMv8RD0M/b+j6VQRPfX
	9AxXIFIkhRrjfwS+XMJFu/nn2Dq13+7FzZRTIFjXSexnTupjULRwR2jsOlp2MhWWjdPj
	VB2U/G69OTpUdNOE1W0bwME30Fn0XurM6M79H23D4nmHrSaW0lBPDlLzTdw39QXYoRF2
	m6yxBvKg0qHGkUvQ6EoDF+4H5Twg4Cbimaky4PEH5Gz15Pv6Vo/iOq9B72nbOAkiZZJE
	108w==
X-Gm-Message-State: APjAAAWQhzNZwG5XxsHyzS4rB+9j4eGtDZV9MoVoLU3krMbBCyJZZr5F
	52F9Ts11Grtet1wIUcE8zx3nwqvKp/IqAirFsnLc3UdV
X-Google-Smtp-Source: APXvYqzBAzIkfOnVqZiPihMg7pfIdRFkzsa23massTh2f2KymaURBbfYlHTaYsfg8vyXF7wE7NuxuTFz8kvJaPGq+KA=
X-Received: by 2002:a05:6830:16:: with SMTP id
	c22mr51948211otp.116.1563802442411; 
	Mon, 22 Jul 2019 06:34:02 -0700 (PDT)
MIME-Version: 1.0
References: <CA+pAvvwqRjoooro4yqwtr8sm5RxAPf0WXjs9JQUJ8SYm=y-UwQ@mail.gmail.com>
	<CANNYZj92fzLDMw-BrLu3_U_QSOoDiA0xODX6VQXQNVk6B7m4-g@mail.gmail.com>
	<CA+pAvvwWj7QxZXG=NY8u=GqXvTFX+ngKm75AtRC2ho4tf7z95w@mail.gmail.com>
In-Reply-To: <CA+pAvvwWj7QxZXG=NY8u=GqXvTFX+ngKm75AtRC2ho4tf7z95w@mail.gmail.com>
From: William Bourque <wbourque@gmail.com>
Date: Mon, 22 Jul 2019 09:33:51 -0400
Message-ID: <CANBSh+PkwETX1UyiV=m-fRnxd76kB0QHeSfejfk6LcSzRx5-6A@mail.gmail.com>
To: Geoff Shannon <geoffpshannon@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Trouble running Poky 2.7 qemu-x86 build
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
X-List-Received-Date: Mon, 22 Jul 2019 13:34:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Geoff,

I'm a bit late but I thought I'd share a useful QEMU trick as well.
If you don't want the qemu helper UI to pop or if you cannot use it
(if you are integrating into build system as example), you can tell
QEMU to bind a certain serial port to a TCP port on your host.
Then, assuming your QEMU image passes "console=3DttyS0,115200n8" in its
kernel boot parameter, you can then login to the system from your host
using the open TCP port.

The exact commands would look like this:

On the host, open an arbitrary TCP port (here I use netcat, but
anything would do):
     nc -l 50299

Then, start QEMU with a "-serial" pointing to the TCP port you opened
on the host.
Below is the "minimal" full QEMU command I use in my case, the serial
binding "-serial tcp:127.0.0.1:50299" at the end:
    qemu-system-x86_64 -device
virtio-net-pci,netdev=3Dnet0,mac=3DDE:AD:DE:AE:BE:EF -netdev
tap,id=3Dnet0,ifname=3Dtap0,script=3Dno,downscript=3Dno -drive
if=3Dnone,id=3Dhd,file=3Dqemux86-64/core-image-minimal-qemux86-64.wic,forma=
t=3Draw
-device virtio-scsi-pci,id=3Dscsi -device scsi-hd,drive=3Dhd -serial
tcp:127.0.0.1:50299

If everything goes well, your system should now bootup and you would get ou=
tput.
Then when getty login starts (assuming you use it), you should be able to l=
ogin.

I hope this help!

- William


On Sun, Jul 21, 2019 at 5:17 PM Geoff Shannon <geoffpshannon@gmail.com> wro=
te:
>
> Interesting! I was unsure about the origin of those lines, and couldn't f=
ind it after looking through the various books and tutorials I've been read=
ing.  So I decided to just follow the yocto project quick build instruction=
s, and generate a new build from `source oe-init-build-env`.  And I found t=
hat line is actually very similar to a line from the local.conf generated b=
y the build init script.
> PACKAGECONFIG_append_pn-qemu-system-native =3D " sdl"
>
> I'm really not sure where that edit came from since I believe I made the =
first conf file I sent by stripping out all of the comments from the genera=
ted local.conf file and then changing a few values.  But I built poky using=
 a checkout of tag yocto-2.7.1 and without editing the local.conf script an=
d now `runqemu qemux86` is popping up a graphical interface and working jus=
t fine.
>
> So thanks for the pointer Alexander, I'm unstuck now!
>
> Geoff
>
> Nothing is ever easy.
>
>
> On Sat, Jul 20, 2019 at 12:19 AM Alexander Kanavin <alex.kanavin@gmail.co=
m> wrote:
>>
>> The line
>> PACKAGECONFIG_append_pn-qemu-native =3D " sdl"
>> looks incorrect. The default local.conf set up for you (when you run 'so=
urce oe-init-build-env build') should have the correct one. Where did that =
line come from? If it's some manual or guide or wiki, we need to update it.
>>
>> Qemu doesn't actually hang, it runs fine but without any graphical outpu=
t, because the graphical support is misconfigured (disabled) in your case.
>>
>> Alex
>>
>> On Sat, 20 Jul 2019 at 07:56, Geoff Shannon <geoffpshannon@gmail.com> wr=
ote:
>>>
>>> Hi all, I'm trying to get started using Poky to build a custom image to=
 run on a beaglebone black.  I started off by trying to follow the Yocto Pr=
oject Quickstart and I'm stuck at getting the image to run on QEMU.  I'm ne=
w to both Yocto Project and using QEMU so I expect I'm doing something simp=
le that's wrong but I haven't been able to figure it out.
>>>
>>> I cloned the poky git repository, checked out tag yocto-2.7, ran `sourc=
e oe-init-build-env build`, setup my local.conf file with the contents in f=
ile attached to this message, and then ran `bitbake core-image-sato`.
>>>
>>> This appeared to complete successfully, so I then proceeded to try and =
test the built image by running `runqemu qemux86`. This spit out this outpu=
t, and then proceeds to hang indefinitely.
>>>
>>> ```
>>> runqemu - INFO - Running MACHINE=3Dqemux86 bitbake -e...
>>> runqemu - INFO - Continuing with the following parameters:
>>>
>>> KERNEL: [/home/geoff/prog/yocto/quick-build/poky/build/tmp/deploy/image=
s/qemux86/bzImage--5.0.3+git0+f0b575cda6_3df4aae607-r0-qemux86-201905200704=
24.bin]
>>> MACHINE: [qemux86]
>>> FSTYPE: [ext4]
>>> ROOTFS: [/home/geoff/prog/yocto/quick-build/poky/build/tmp/deploy/image=
s/qemux86/core-image-sato-qemux86-20190520070424.rootfs.ext4]
>>> CONFFILE: [/home/geoff/prog/yocto/quick-build/poky/build/tmp/deploy/ima=
ges/qemux86/core-image-sato-qemux86-20190520070424.qemuboot.conf]
>>>
>>> runqemu - INFO - Setting up tap interface under sudo
>>> [sudo] password for geoff:
>>> runqemu - INFO - Network configuration: 192.168.7.2::192.168.7.1:255.25=
5.255.0
>>> runqemu - INFO - Running /home/geoff/prog/yocto/quick-build/poky/build/=
tmp/work/x86_64-linux/qemu-helper-native/1.0-r1/recipe-sysroot-native/usr/b=
in/qemu-system-i386 -device virtio-net-pci,netdev=3Dnet0,mac=3D52:54:00:12:=
34:02 -netdev tap,id=3Dnet0,ifname=3Dtap0,script=3Dno,downscript=3Dno -driv=
e file=3D/home/geoff/prog/yocto/quick-build/poky/build/tmp/deploy/images/qe=
mux86/core-image-sato-qemux86-20190520070424.rootfs.ext4,if=3Dvirtio,format=
=3Draw -vga vmware -show-cursor -usb -device usb-tablet -object rng-random,=
filename=3D/dev/urandom,id=3Drng0 -device virtio-rng-pci,rng=3Drng0   -cpu =
pentium2 -m 256 -serial mon:vc -serial null -kernel /home/geoff/prog/yocto/=
quick-build/poky/build/tmp/deploy/images/qemux86/bzImage--5.0.3+git0+f0b575=
cda6_3df4aae607-r0-qemux86-20190520070424.bin -append 'root=3D/dev/vda rw h=
ighres=3Doff  mem=3D256M ip=3D192.168.7.2::192.168.7.1:255.255.255.0 vga=3D=
0 uvesafb.mode_option=3D640x480-32 oprofile.timer=3D1 uvesafb.task_timeout=
=3D-1 '
>>> ```
>>>
>>> I was under the impression that this would pop up a window with the bui=
lt image running in QEMU, but nothing happens.
>>>
>>> In case it helps, the output of `uname -a` on my machine is:
>>> Linux pop-os 4.18.0-17-generic #18~18.04.1-Ubuntu SMP Fri Mar 15 15:27:=
12 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux
>>>
>>> If anyone has ideas about what is going wrong, further troubleshooting =
suggestions I would very much appreciate it.  If there is a more suitable p=
lace to ask for this kind of help my apologies and I would appreciate a poi=
nter to the correct place to get help.
>>>
>>> Thanks,
>>> Geoff
>>>
>>> Nothing is ever easy.
>>> --
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

