Return-Path: <enok@lysator.liu.se>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D031EC54E58
	for <webhook@archiver.kernel.org>; Tue, 12 Mar 2024 10:52:47 +0000 (UTC)
Subject: Re: [PATCH] kernel-fitimage: dtb sections named by their filenames and one config section for each dtb
To: poky@lists.yoctoproject.org
From: enok@lysator.liu.se
X-Originating-Location: Bromma, Stockholm County, SE (94.191.137.33)
X-Originating-Platform: Linux Firefox 123
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 12 Mar 2024 03:52:44 -0700
References: <1489764783-11522-1-git-send-email-fw@javox-solutions.com>
In-Reply-To: <1489764783-11522-1-git-send-email-fw@javox-solutions.com>
Message-ID: <4511.1710240764565121572@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="U4tDVB8QScMyw18d2JWf"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 12 Mar 2024 10:52:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13305

--U4tDVB8QScMyw18d2JWf
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

I added some .dtso overlay files to KERNEL_DEVICETREE in order to have them=
 added to my fitimage file through the kernel-fitimage.class.

This seems to work, as long as corresponding .dtso files are added to the r=
ight subdir with SRC_URI in the linux kernel recipe. The dtbo becomes inclu=
ded in the fitimage. config sections are emitted.

However, the config sections in the fitimage become weird. One config secti=
on is emitted for each dtb or dtbo file. Does this make sense? Shouldn't th=
ere be one config section for each .dtb file, and then dtbo references be a=
dded to these sections? The most simple alternative would be to add every .=
dtbo file in KERNEL_DEVICETREE to ever .dtb config section, but probably th=
ere should be some way to select which overlays to add to each dtb.

It currently looks like this:
```
        configurations {
                default =3D "conf-rk3588s-rock-5a.dtb";
                conf-rk3588s-rock-5a.dtb {
                        description =3D "1 Linux kernel, FDT blob";
                       =20
                        kernel =3D "kernel-1";
                        fdt =3D "fdt-rk3588s-rock-5a.dtb";
                       =20
                       =20
                       =20
                        hash-1 {
                                algo =3D "sha256";
                        };
                };
               =20
                conf-rock-5a-radxa-camera-4k.dtbo {
                        description =3D "0 FDT blob";
                       =20
                       =20
                        fdt =3D "fdt-rock-5a-radxa-camera-4k.dtbo";
                       =20
                       =20
                       =20
                        hash-1 {
                                algo =3D "sha256";
                        };
                };
        };
```
but I would have expected it to look like this:
```
        configurations {
                default =3D "conf-rk3588s-rock-5a.dtb";
                conf-rk3588s-rock-5a.dtb {
                        description =3D "1 Linux kernel, FDT blob";
                       =20
                        kernel =3D "kernel-1";
                        fdt =3D "fdt-rk3588s-rock-5a.dtb", "fdt-rock-5a-rad=
xa-camera-4k.dtbo";;
                       =20
                       =20
                       =20
                        hash-1 {
                                algo =3D "sha256";
                        };
                };
        };
```

As in this example from u-boot/doc/uImage.FIT/overlay-fdt-boot.txt:
```
	/dts-v1/;
	/ {
		images {
			kernel {
				data =3D /incbin/("./zImage");
				type =3D "kernel";
				arch =3D "arm";
				os =3D "linux";
				load =3D <0x82000000>;
				entry =3D <0x82000000>;
			};
			fdt-1 {
				data =3D /incbin/("./foo.dtb");
				type =3D "flat_dt";
				arch =3D "arm";
				load =3D <0x87f00000>;
			};
			fdt-2 {
				data =3D /incbin/("./reva.dtbo");
				type =3D "flat_dt";
				arch =3D "arm";
				load =3D <0x87fc0000>;
			};
			fdt-3 {
				data =3D /incbin/("./revb.dtbo");
				type =3D "flat_dt";
				arch =3D "arm";
				load =3D <0x87fc0000>;
			};
			fdt-4 {
				data =3D /incbin/("./bar.dtbo");
				type =3D "flat_dt";
				arch =3D "arm";
				load =3D <0x87fc0000>;
			};
			fdt-5 {
				data =3D /incbin/("./baz.dtbo");
				type =3D "flat_dt";
				arch =3D "arm";
				load =3D <0x87fc0000>;
			};
		};

		configurations {
			default =3D "foo-reva.dtb;
			foo-reva.dtb {
				kernel =3D "kernel";
				fdt =3D "fdt-1", "fdt-2";
			};
			foo-revb.dtb {
				kernel =3D "kernel";
				fdt =3D "fdt-1", "fdt-3";
			};
			foo-reva-bar.dtb {
				kernel =3D "kernel";
				fdt =3D "fdt-1", "fdt-2", "fdt-4";
			};
			foo-revb-bar.dtb {
				kernel =3D "kernel";
				fdt =3D "fdt-1", "fdt-3", "fdt-4";
			};
			foo-revb-baz.dtb {
				kernel =3D "kernel";
				fdt =3D "fdt-1", "fdt-3", "fdt-5";
			};
			foo-revb-bar-baz.dtb {
				kernel =3D "kernel";
				fdt =3D "fdt-1", "fdt-3", "fdt-4", "fdt-5";
			};
			bar {
				fdt =3D "fdt-4";
			};
			baz {
				fdt =3D "fdt-5";
			};
		};
	};
```

--U4tDVB8QScMyw18d2JWf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I added some .dtso overlay files to KERNEL_DEVICETREE in order to have t=
hem added to my fitimage file through the kernel-fitimage.class.</p>

<p>This seems to work, as long as corresponding .dtso files are added to th=
e right subdir with SRC_URI in the linux kernel recipe. The dtbo becomes in=
cluded in the fitimage. config sections are emitted.</p>

<p>However, the config sections in the fitimage become weird. One config se=
ction is emitted for each dtb or dtbo file. Does this make sense? Shouldn't=
 there be one config section for each .dtb file, and then dtbo references b=
e added to these sections? The most simple alternative would be to add ever=
y .dtbo file in KERNEL_DEVICETREE to ever .dtb config section, but probably=
 there should be some way to select which overlays to add to each dtb.</p>

<p>It currently looks like this:</p>
<pre class=3D"prettyprint"><code class=3D"language-unknown">        configu=
rations {
                default =3D &#34;conf-rk3588s-rock-5a.dtb&#34;;
                conf-rk3588s-rock-5a.dtb {
                        description =3D &#34;1 Linux kernel, FDT blob&#34;;
                       =20
                        kernel =3D &#34;kernel-1&#34;;
                        fdt =3D &#34;fdt-rk3588s-rock-5a.dtb&#34;;
                       =20
                       =20
                       =20
                        hash-1 {
                                algo =3D &#34;sha256&#34;;
                        };
                };
               =20
                conf-rock-5a-radxa-camera-4k.dtbo {
                        description =3D &#34;0 FDT blob&#34;;
                       =20
                       =20
                        fdt =3D &#34;fdt-rock-5a-radxa-camera-4k.dtbo&#34;;
                       =20
                       =20
                       =20
                        hash-1 {
                                algo =3D &#34;sha256&#34;;
                        };
                };
        };
</code></pre>
<p>but I would have expected it to look like this:</p>
<pre class=3D"prettyprint"><code class=3D"language-unknown">        configu=
rations {
                default =3D &#34;conf-rk3588s-rock-5a.dtb&#34;;
                conf-rk3588s-rock-5a.dtb {
                        description =3D &#34;1 Linux kernel, FDT blob&#34;;
                       =20
                        kernel =3D &#34;kernel-1&#34;;
                        fdt =3D &#34;fdt-rk3588s-rock-5a.dtb&#34;, &#34;fdt=
-rock-5a-radxa-camera-4k.dtbo&#34;;;
                       =20
                       =20
                       =20
                        hash-1 {
                                algo =3D &#34;sha256&#34;;
                        };
                };
        };
</code></pre>
<p>As in this example from u-boot/doc/uImage.FIT/overlay-fdt-boot.txt:</p>
<pre class=3D"prettyprint"><code class=3D"language-unknown">	/dts-v1/;
	/ {
		images {
			kernel {
				data =3D /incbin/(&#34;./zImage&#34;);
				type =3D &#34;kernel&#34;;
				arch =3D &#34;arm&#34;;
				os =3D &#34;linux&#34;;
				load =3D &lt;0x82000000&gt;;
				entry =3D &lt;0x82000000&gt;;
			};
			fdt-1 {
				data =3D /incbin/(&#34;./foo.dtb&#34;);
				type =3D &#34;flat_dt&#34;;
				arch =3D &#34;arm&#34;;
				load =3D &lt;0x87f00000&gt;;
			};
			fdt-2 {
				data =3D /incbin/(&#34;./reva.dtbo&#34;);
				type =3D &#34;flat_dt&#34;;
				arch =3D &#34;arm&#34;;
				load =3D &lt;0x87fc0000&gt;;
			};
			fdt-3 {
				data =3D /incbin/(&#34;./revb.dtbo&#34;);
				type =3D &#34;flat_dt&#34;;
				arch =3D &#34;arm&#34;;
				load =3D &lt;0x87fc0000&gt;;
			};
			fdt-4 {
				data =3D /incbin/(&#34;./bar.dtbo&#34;);
				type =3D &#34;flat_dt&#34;;
				arch =3D &#34;arm&#34;;
				load =3D &lt;0x87fc0000&gt;;
			};
			fdt-5 {
				data =3D /incbin/(&#34;./baz.dtbo&#34;);
				type =3D &#34;flat_dt&#34;;
				arch =3D &#34;arm&#34;;
				load =3D &lt;0x87fc0000&gt;;
			};
		};

		configurations {
			default =3D &#34;foo-reva.dtb;
			foo-reva.dtb {
				kernel =3D &#34;kernel&#34;;
				fdt =3D &#34;fdt-1&#34;, &#34;fdt-2&#34;;
			};
			foo-revb.dtb {
				kernel =3D &#34;kernel&#34;;
				fdt =3D &#34;fdt-1&#34;, &#34;fdt-3&#34;;
			};
			foo-reva-bar.dtb {
				kernel =3D &#34;kernel&#34;;
				fdt =3D &#34;fdt-1&#34;, &#34;fdt-2&#34;, &#34;fdt-4&#34;;
			};
			foo-revb-bar.dtb {
				kernel =3D &#34;kernel&#34;;
				fdt =3D &#34;fdt-1&#34;, &#34;fdt-3&#34;, &#34;fdt-4&#34;;
			};
			foo-revb-baz.dtb {
				kernel =3D &#34;kernel&#34;;
				fdt =3D &#34;fdt-1&#34;, &#34;fdt-3&#34;, &#34;fdt-5&#34;;
			};
			foo-revb-bar-baz.dtb {
				kernel =3D &#34;kernel&#34;;
				fdt =3D &#34;fdt-1&#34;, &#34;fdt-3&#34;, &#34;fdt-4&#34;, &#34;fdt-5&#=
34;;
			};
			bar {
				fdt =3D &#34;fdt-4&#34;;
			};
			baz {
				fdt =3D &#34;fdt-5&#34;;
			};
		};
	};
</code></pre>

--U4tDVB8QScMyw18d2JWf--

