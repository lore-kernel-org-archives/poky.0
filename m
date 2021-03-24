Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web08.929.1616611386869413021
 for <poky@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 11:43:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QZONlEUj;
 spf=pass (domain: gmail.com, ip: 209.85.210.180, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f180.google.com with SMTP id c17so11094802pfn.6
        for <poky@lists.yoctoproject.org>; Wed, 24 Mar 2021 11:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0E8CC0vIh+I3RfyNKRSaijvaUlHGZcYC3v85WAn1yTc=;
        b=QZONlEUjpHFqekRKfjlCBh1UuKT1mpLSbhjPO7d7EIa34bPxVqbEhgSButY2SBs/yd
         Ml2x+mC4g9UbcAoi4W4Xn6/3f6vEIMfIORYkiFPKSPdHujT9KoEg7ugDcSxEKJBXf4MT
         KBf0iPXP5BjkmN51zTpgx+Ew+2iVGvHg0NqF3qDFnFDnBKLGl1RFKjjQmczKwQJwB8b4
         gskUQbDZmmzK2wjCBDQjuu/Hi33I44l7sQ/6zczbgGqFa7uc6pZYwEZENVlFFHnOMmDR
         Bs/eugnf9tYkoJzqUeIRHALF/8tSpZuYH908Hrmo1AZfNS7KLVvHRSSc5y6biJrURpwQ
         zZfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=0E8CC0vIh+I3RfyNKRSaijvaUlHGZcYC3v85WAn1yTc=;
        b=JR0AJPMwFrpDqeim7bU2VMc9caM7PLvs5ljVjYydyK1Cj1g/SXCQfRJOjYa+x01P+y
         1qo29IuJAJQPQNbwMeQZHHQEI6JaLYzIKEkjTEaarP57gkQQ+ZV1ssiLJhh6dJsdf/Wt
         2rj4HNiECLTbADV08zJ/HyNUppOOCnuQIRvhO8b8Ruet7gAZnb7+ugLOimEGFi2yMOOb
         ASoNnwL870+OLopUONZnUxLQSDgcpMIVfrvBKz0VVFTaPf92R03220zkdqOkfwsh8UGC
         uVZFwabWg+aqUm/vfXaeHlqxJZS7iH2cSXwg+XgThukdsWADXjCAZ9DUgcEjWHpqBt+4
         2OHw==
X-Gm-Message-State: AOAM5300pMY+HazFVf7IMpVRTk8jTfIzPboY3nqYwf+f99X5gmqneZkv
	wPgjuACIcW6uZZrNY7mK2sWKT4YfYPgD0A==
X-Google-Smtp-Source: ABdhPJweTFuLPEIAJMgBEeG0bovX2nS3WQULkHvLThbeAcvs9vSBHD8GWL47ZHXZl9phYQBUuxcvdQ==
X-Received: by 2002:a17:902:262:b029:e7:1053:2c26 with SMTP id 89-20020a1709020262b02900e710532c26mr3946815plc.59.1616611385348;
        Wed, 24 Mar 2021 11:43:05 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:2da1:1afd:1712:ea8b? ([2601:646:9200:a0f0:2da1:1afd:1712:ea8b])
        by smtp.gmail.com with ESMTPSA id t16sm3274130pfc.204.2021.03.24.11.43.04
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Mar 2021 11:43:04 -0700 (PDT)
Subject: Re: [poky] Weird Compilation issue with a c++ recipe
To: poky@lists.yoctoproject.org
References: <Groupsio.1.pwb1.1616605380917082275.iIyZ@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <1bf54cb4-31c0-863c-ead4-c02431ba1c36@gmail.com>
Date: Wed, 24 Mar 2021 11:43:03 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <Groupsio.1.pwb1.1616605380917082275.iIyZ@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

Looks like CMake file is not keeping the CC/CXX variables that yocto is 
passing. Look into that aspect e.g. you can do

bitbake -e <your-recipe> | grep -e "^CXX="
and see whats the value of CXX that yocto wants to pass and compare it
with what you see in final Makefile

On 3/24/21 10:03 AM, arunlee@gmail.com wrote:
> [Edited Message Follows]
> 
> Hi,
> 
> I am facing an issue with compiling a recipe which has c++ sources.
> 
> The CMakeList.txt is has the following
> ---------------------------------------------------------------------------------------------------------------------------
> 
> # Set minimum required CMake version
> cmake_minimum_required(VERSION 3.5.1)
> 
> # Name the project Intel RealSense D400 camera server
> project (rs-camera-master)
> 
> # Integrity
> if (${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR})
>          MESSAGE( FATAL_ERROR "In-source builds not allowed. Please 
> specify a build directory!")
> endif()
> 
> SET (EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
> SET (LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR})
> 
> # Enable C++11
> set(CMAKE_CXX_STANDARD 11)
> set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
> 
> if(COMPILER_SUPPORTS_CXX11)
>      set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
> elseif(COMPILER_SUPPORTS_CXX0X)
>      set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")
> endif()
> 
> 
> if(MSVC)
>      if(BUILD_WITH_STATIC_CRT)
>        set(CMAKE_CXX_FLAGS_RELEASE "/MT")
>      else()
>        set(CMAKE_CXX_FLAGS_RELEASE "/MD")
>      endif()
> 
>      add_definitions(-D_WIN32)
> elseif(ANDROID)
>      SET (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pipe -fPIC -pie -llog 
> -pedantic -std=gnu++11 -O2 -W -Wl,--no-undefined -fopenmp -ldl")
> else()
>      EXEC_PROGRAM(uname ARGS -p OUTPUT_VARIABLE CMAKE_SYSTEM_PROCCESSOR)
>      message(STATUS "CMAKE_SYSTEM_PROCCESSOR=${CMAKE_SYSTEM_PROCCESSOR}")
>      SET (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pipe -pedantic 
> -std=gnu++11 -W -Wl,--no-undefined -fopenmp")
> endif()
> 
> # calibration api include and library paths
> set (DCAPI_INCLUDE_DIR 
> ${CMAKE_CURRENT_SOURCE_DIR}/librscalibrationapi/Include)
> 
> if(MSVC)
>      set (DCAPI_LIBS_DIR 
> ${CMAKE_CURRENT_SOURCE_DIR}/librscalibrationapi/lib/windows/x64)
> elseif(${CMAKE_SYSTEM_PROCCESSOR} MATCHES "aarch64|AARCH64")
>      set (DCAPI_LIBS_DIR 
> ${CMAKE_CURRENT_SOURCE_DIR}/librscalibrationapi/lib/linux/aarch64)
> else()
>      set (DCAPI_LIBS_DIR 
> ${CMAKE_CURRENT_SOURCE_DIR}/librscalibrationapi/lib/linux/x86_64)
> endif()
> 
> INCLUDE_DIRECTORIES(include)
> 
> # Add the sources to the target
> add_subdirectory(src)
> 
> 
> 
> ---------------------------------------------------------------------------------------------------------------------------
> 
> the bb file is
> ----------------------------------------------------------------------------------------------------------------------------------------
> 
> LICENSE = "Unknown"
> LIC_FILES_CHKSUM = "file://License.txt;md5=65a9f55463db06e17a43396aa0c4ed4b"
> 
> SRC_URI = "http://myserver.com/temp/rs-oem-kit-server-${PV}.tar.gz"
> SRC_URI[md5sum] = "58bee3aff61140b53bc94884b872eab4"
> SRC_URI[sha1sum] = "6d4febf4bb32072078c4f67d0e7672a97e6fb5be"
> SRC_URI[sha256sum] = 
> "0aa975e73248e20e07aaf124e46fb92292f083f85a043c4b6a1f7dcb538b88a6"
> SRC_URI[sha384sum] = 
> "180d259fb3c8bdc79265e9643577e6883d6c85c31bb2df8751af26937c02279e8c85d3fb72ebf053f58894904371377b"
> SRC_URI[sha512sum] = 
> "7c808c053103d39a97de6f25519e4733a417d9e61d1dc6ce7cfdb11d16bcedde8341f9f1904eae76188c939f3e7daf35cb0ce7c5f0046474718bd6aa7119ab98"
> 
> S = "${WORKDIR}/${BPN}"
> CXXFLAGS_append = " -lstdc++"
> # NOTE: the following library dependencies are unknown, ignoring: usb
> #       (this is based on recipes that have previously been built and 
> packaged)
> inherit cmake pkgconfig
> 
> # Specify any options you want to pass to cmake using EXTRA_OECMAKE:
> EXTRA_OECMAKE = ""
> 
> ----------------------------------------------------------------------------------------------------------------------------------------
> 
> I am getting a compilation error for bitbake rs-oem-kit-server
> ----------------------------------------------------------------------------------------------------------------------------------------
> 
> | [8/34] 
> /home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/aarch64-poky-linux-g++   
> -I/home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/rs-oem-kit-server/include 
> -I/home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/rs-oem-kit-server/src/writer/../common 
> -std=gnu++11 -fPIE -fPIC -O2 -D_FORTIFY_SOURCE=2 -Wformat 
> -Wformat-security -fstack-protector-strong -lpthread -fpermissive   
> -std=gnu++11 -MD -MT 
> src/writer/CMakeFiles/rs-calibration-writer.dir/__/device/d400_dev.cpp.o 
> -MF 
> src/writer/CMakeFiles/rs-calibration-writer.dir/__/device/d400_dev.cpp.o.d 
> -o 
> src/writer/CMakeFiles/rs-calibration-writer.dir/__/device/d400_dev.cpp.o 
> -c 
> /home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/rs-oem-kit-server/src/device/d400_dev.cpp
> | FAILED: 
> src/writer/CMakeFiles/rs-calibration-writer.dir/__/device/d400_dev.cpp.o
> | 
> /home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/aarch64-poky-linux-g++   
> -I/home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/rs-oem-kit-server/include 
> -I/home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/rs-oem-kit-server/src/writer/../common 
> -std=gnu++11 -fPIE -fPIC -O2 -D_FORTIFY_SOURCE=2 -Wformat 
> -Wformat-security -fstack-protector-strong -lpthread -fpermissive   
> -std=gnu++11 -MD -MT 
> src/writer/CMakeFiles/rs-calibration-writer.dir/__/device/d400_dev.cpp.o 
> -MF 
> src/writer/CMakeFiles/rs-calibration-writer.dir/__/device/d400_dev.cpp.o.d 
> -o 
> src/writer/CMakeFiles/rs-calibration-writer.dir/__/device/d400_dev.cpp.o 
> -c 
> /home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/rs-oem-kit-server/src/device/d400_dev.cpp
> | 
> /home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/rs-oem-kit-server/src/device/d400_dev.cpp:15:10: 
> fatal error: iostream: No such file or directory
> |    15 | #include <iostream>
> |       |          ^~~~~~~~~~
> | compilation terminated.
> 
> ---------------------------------------------------------------------------------------------------------------------------------------
> 
> Could you please see what i am doing wrong here?
> 
> Host: Ubuntu 18.04
> Yocto: poky dunfell, with raspberrypi meta layers
> 
> regards
> Arun
> 
> 
> 
> 
