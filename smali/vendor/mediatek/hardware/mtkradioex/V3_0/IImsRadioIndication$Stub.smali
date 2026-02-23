.class public abstract Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1923
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1926
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1939
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1976
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1977
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1978
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1979
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1980
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1951
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    filled-new-array {v2, v1}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_0
    .array-data 1
        -0x47t
        -0x3ft
        -0x14t
        0x4t
        -0x6at
        0x37t
        -0x66t
        -0x23t
        -0x72t
        -0x6ft
        0x58t
        -0xat
        -0x70t
        0x3et
        0x4ft
        -0x7ct
        -0x66t
        -0x13t
        0xft
        -0x67t
        -0x65t
        -0x67t
        0x52t
        0x2ft
        -0x13t
        0x17t
        0x53t
        -0x25t
        -0x1at
        -0x34t
        -0x7at
        0x23t
    .end array-data

    :array_1
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1931
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.mtkradioex@3.0::IImsRadioIndication"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1945
    const-string v0, "vendor.mediatek.hardware.mtkradioex@3.0::IImsRadioIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1964
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1986
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1988
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 12
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2016
    move-object v9, p3

    const/4 v1, 0x0

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "vendor.mediatek.hardware.mtkradioex@3.0::IImsRadioIndication"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 2735
    :sswitch_0
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2737
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->notifySyspropsChanged()V

    .line 2738
    goto/16 :goto_1

    .line 2724
    :sswitch_1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2726
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v2

    .line 2727
    .local v2, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2728
    invoke-virtual {v2, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2729
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2730
    goto/16 :goto_1

    .line 2714
    .end local v2    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2716
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->ping()V

    .line 2717
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2718
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2719
    goto/16 :goto_1

    .line 2709
    :sswitch_3
    goto/16 :goto_1

    .line 2701
    :sswitch_4
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2703
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->setHALInstrumentation()V

    .line 2704
    goto/16 :goto_1

    .line 2667
    :sswitch_5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2669
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v2

    .line 2670
    .local v2, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2672
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2674
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2675
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2676
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2677
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v1, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 2678
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 2680
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 2681
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 2683
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_0

    array-length v10, v8

    const/16 v11, 0x20

    if-ne v10, v11, :cond_0

    .line 2687
    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2688
    nop

    .line 2678
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2684
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Array element is not of the expected length"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2691
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2693
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2695
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2696
    goto/16 :goto_1

    .line 2656
    .end local v2    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2658
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 2659
    .local v2, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2660
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2661
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2662
    goto/16 :goto_1

    .line 2644
    .end local v2    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2646
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v2

    .line 2647
    .local v2, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v3

    .line 2648
    .local v3, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2649
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2650
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2651
    goto/16 :goto_1

    .line 2633
    .end local v2    # "fd":Landroid/os/NativeHandle;
    .end local v3    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2635
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v2

    .line 2636
    .local v2, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2637
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2638
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2639
    goto/16 :goto_1

    .line 2623
    .end local v2    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2625
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2626
    .local v1, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2627
    .local v2, "flag":I
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->imsRegFlagInd(II)V

    .line 2628
    goto/16 :goto_1

    .line 2613
    .end local v1    # "type":I
    .end local v2    # "flag":I
    :sswitch_a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2615
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2616
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2617
    .local v2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->onMDInternetUsageInd(ILjava/util/ArrayList;)V

    .line 2618
    goto/16 :goto_1

    .line 2603
    .end local v1    # "type":I
    .end local v2    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2605
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2606
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2607
    .local v2, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->videoRingtoneEventInd(ILjava/util/ArrayList;)V

    .line 2608
    goto/16 :goto_1

    .line 2593
    .end local v1    # "type":I
    .end local v2    # "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2595
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2596
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2597
    .local v2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->eregrtInfoInd(ILjava/util/ArrayList;)V

    .line 2598
    goto/16 :goto_1

    .line 2583
    .end local v1    # "type":I
    .end local v2    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2585
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2586
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2587
    .local v2, "status":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->onSsacStatus(ILjava/util/ArrayList;)V

    .line 2588
    goto/16 :goto_1

    .line 2573
    .end local v1    # "type":I
    .end local v2    # "status":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2575
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2576
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2577
    .local v2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->imsRegInfoInd(ILjava/util/ArrayList;)V

    .line 2578
    goto/16 :goto_1

    .line 2562
    .end local v1    # "type":I
    .end local v2    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2564
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2565
    .restart local v1    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsRegStatusInfo;

    invoke-direct {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsRegStatusInfo;-><init>()V

    .line 2566
    .local v2, "report":Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsRegStatusInfo;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsRegStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2567
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->imsRegStatusReport(ILvendor/mediatek/hardware/mtkradioex/V3_0/ImsRegStatusInfo;)V

    .line 2568
    goto/16 :goto_1

    .line 2550
    .end local v1    # "type":I
    .end local v2    # "report":Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsRegStatusInfo;
    :sswitch_10
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2552
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2553
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2554
    .local v2, "account_id":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2555
    .local v3, "response_code":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v4

    .line 2556
    .local v4, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->sipRegInfoInd(IIILjava/util/ArrayList;)V

    .line 2557
    goto/16 :goto_1

    .line 2539
    .end local v1    # "type":I
    .end local v2    # "account_id":I
    .end local v3    # "response_code":I
    .end local v4    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_11
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2541
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2542
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2543
    .local v2, "domain":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2544
    .local v3, "rat":I
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->callRatIndication(III)V

    .line 2545
    goto/16 :goto_1

    .line 2529
    .end local v1    # "type":I
    .end local v2    # "domain":I
    .end local v3    # "rat":I
    :sswitch_12
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2531
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2532
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2533
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->sipHeaderReport(ILjava/util/ArrayList;)V

    .line 2534
    goto/16 :goto_1

    .line 2518
    .end local v1    # "type":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_13
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2520
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2521
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2522
    .local v2, "ciType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v3

    .line 2523
    .local v3, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->callAdditionalInfoInd(IILjava/util/ArrayList;)V

    .line 2524
    goto/16 :goto_1

    .line 2508
    .end local v1    # "type":I
    .end local v2    # "ciType":I
    .end local v3    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_14
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2510
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2511
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2512
    .local v2, "vops":I
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->sendVopsIndication(II)V

    .line 2513
    goto/16 :goto_1

    .line 2497
    .end local v1    # "type":I
    .end local v2    # "vops":I
    :sswitch_15
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2499
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2500
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2501
    .local v2, "callId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2502
    .local v3, "audio":I
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->audioIndication(III)V

    .line 2503
    goto/16 :goto_1

    .line 2486
    .end local v1    # "type":I
    .end local v2    # "callId":I
    .end local v3    # "audio":I
    :sswitch_16
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2488
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2489
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2490
    .restart local v2    # "callId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2491
    .local v3, "rttType":I
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->rttModifyRequestReceive(III)V

    .line 2492
    goto/16 :goto_1

    .line 2474
    .end local v1    # "type":I
    .end local v2    # "callId":I
    .end local v3    # "rttType":I
    :sswitch_17
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2476
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2477
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2478
    .restart local v2    # "callId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2479
    .local v3, "lenOfString":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2480
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->rttTextReceive(IIILjava/lang/String;)V

    .line 2481
    goto/16 :goto_1

    .line 2463
    .end local v1    # "type":I
    .end local v2    # "callId":I
    .end local v3    # "lenOfString":I
    .end local v4    # "text":Ljava/lang/String;
    :sswitch_18
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2465
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2466
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2467
    .restart local v2    # "callId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2468
    .local v3, "result":I
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->rttModifyResponse(III)V

    .line 2469
    goto/16 :goto_1

    .line 2449
    .end local v1    # "type":I
    .end local v2    # "callId":I
    .end local v3    # "result":I
    :sswitch_19
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2451
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2452
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2453
    .restart local v2    # "callId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2454
    .local v3, "localCap":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 2455
    .local v4, "remoteCap":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2456
    .local v5, "localStatus":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 2457
    .local v6, "remoteStatus":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->rttCapabilityIndication(IIIIII)V

    .line 2458
    goto/16 :goto_1

    .line 2433
    .end local v1    # "type":I
    .end local v2    # "callId":I
    .end local v3    # "localCap":I
    .end local v4    # "remoteCap":I
    .end local v5    # "localStatus":I
    .end local v6    # "remoteStatus":I
    :sswitch_1a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2435
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2436
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2437
    .local v2, "pdnId":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2438
    .local v3, "networkId":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2439
    .local v4, "timer":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2440
    .local v5, "sendPktLost":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2441
    .local v6, "recvPktLost":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2442
    .local v7, "jitter":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2443
    .local v8, "delay":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->imsRtpInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    goto/16 :goto_1

    .line 2423
    .end local v1    # "type":I
    .end local v2    # "pdnId":Ljava/lang/String;
    .end local v3    # "networkId":Ljava/lang/String;
    .end local v4    # "timer":Ljava/lang/String;
    .end local v5    # "sendPktLost":Ljava/lang/String;
    .end local v6    # "recvPktLost":Ljava/lang/String;
    .end local v7    # "jitter":Ljava/lang/String;
    .end local v8    # "delay":Ljava/lang/String;
    :sswitch_1b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2425
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2426
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2427
    .local v2, "callId":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->imsRedialEmergencyIndication(ILjava/lang/String;)V

    .line 2428
    goto/16 :goto_1

    .line 2414
    .end local v1    # "type":I
    .end local v2    # "callId":Ljava/lang/String;
    :sswitch_1c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2416
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2417
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->noEmergencyCallbackMode(I)V

    .line 2418
    goto/16 :goto_1

    .line 2403
    .end local v1    # "type":I
    :sswitch_1d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2405
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2406
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 2407
    .local v2, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2408
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->cdmaNewSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 2409
    goto/16 :goto_1

    .line 2393
    .end local v1    # "type":I
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_1e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2395
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2396
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2397
    .local v2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->newSmsStatusReportEx(ILjava/util/ArrayList;)V

    .line 2398
    goto/16 :goto_1

    .line 2383
    .end local v1    # "type":I
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_1f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2385
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2386
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2387
    .restart local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->newSmsEx(ILjava/util/ArrayList;)V

    .line 2388
    goto/16 :goto_1

    .line 2371
    .end local v1    # "type":I
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_20
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2373
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2374
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2375
    .local v2, "capability":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2376
    .local v3, "event":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2377
    .local v4, "extra":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->imsDataInfoNotify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2378
    goto/16 :goto_1

    .line 2362
    .end local v1    # "type":I
    .end local v2    # "capability":Ljava/lang/String;
    .end local v3    # "event":Ljava/lang/String;
    .end local v4    # "extra":Ljava/lang/String;
    :sswitch_21
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2364
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2365
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->imsCfgConfigLoaded(I)V

    .line 2366
    goto/16 :goto_1

    .line 2350
    .end local v1    # "type":I
    :sswitch_22
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2352
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2353
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2354
    .local v2, "phoneId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2355
    .local v3, "configId":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2356
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->imsCfgConfigChanged(IILjava/lang/String;Ljava/lang/String;)V

    .line 2357
    goto/16 :goto_1

    .line 2338
    .end local v1    # "type":I
    .end local v2    # "phoneId":I
    .end local v3    # "configId":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :sswitch_23
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2340
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2341
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2342
    .restart local v2    # "phoneId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2343
    .local v3, "featureId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 2344
    .local v4, "value":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->imsCfgFeatureChanged(IIII)V

    .line 2345
    goto/16 :goto_1

    .line 2329
    .end local v1    # "type":I
    .end local v2    # "phoneId":I
    .end local v3    # "featureId":I
    .end local v4    # "value":I
    :sswitch_24
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2331
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2332
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->imsCfgDynamicImsSwitchComplete(I)V

    .line 2333
    goto/16 :goto_1

    .line 2319
    .end local v1    # "type":I
    :sswitch_25
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2321
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2322
    .restart local v1    # "type":I
    invoke-static {p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/Dialog;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2323
    .local v2, "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/Dialog;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->imsDialogIndication(ILjava/util/ArrayList;)V

    .line 2324
    goto/16 :goto_1

    .line 2305
    .end local v1    # "type":I
    .end local v2    # "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/Dialog;>;"
    :sswitch_26
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2307
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2308
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2309
    .local v2, "callId":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2310
    .local v3, "ptype":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2311
    .local v4, "urcIdx":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2312
    .local v5, "totalUrcCount":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2313
    .local v6, "rawData":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->lteMessageWaitingIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2314
    goto/16 :goto_1

    .line 2295
    .end local v1    # "type":I
    .end local v2    # "callId":Ljava/lang/String;
    .end local v3    # "ptype":Ljava/lang/String;
    .end local v4    # "urcIdx":Ljava/lang/String;
    .end local v5    # "totalUrcCount":Ljava/lang/String;
    .end local v6    # "rawData":Ljava/lang/String;
    :sswitch_27
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2297
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2298
    .restart local v1    # "type":I
    invoke-static {p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsConfParticipant;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2299
    .local v2, "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsConfParticipant;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->imsConferenceInfoIndication(ILjava/util/ArrayList;)V

    .line 2300
    goto/16 :goto_1

    .line 2285
    .end local v1    # "type":I
    .end local v2    # "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsConfParticipant;>;"
    :sswitch_28
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2287
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2288
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2289
    .local v2, "info":I
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->speechCodecInfoIndication(II)V

    .line 2290
    goto/16 :goto_1

    .line 2274
    .end local v1    # "type":I
    .end local v2    # "info":I
    :sswitch_29
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2276
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2277
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2278
    .local v2, "iid":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2279
    .local v3, "info":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->imsRadioInfoChange(ILjava/lang/String;Ljava/lang/String;)V

    .line 2280
    goto/16 :goto_1

    .line 2264
    .end local v1    # "type":I
    .end local v2    # "iid":Ljava/lang/String;
    .end local v3    # "info":Ljava/lang/String;
    :sswitch_2a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2266
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2267
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2268
    .local v2, "supportLteEcc":I
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->imsSupportEcc(II)V

    .line 2269
    goto/16 :goto_1

    .line 2255
    .end local v1    # "type":I
    .end local v2    # "supportLteEcc":I
    :sswitch_2b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2257
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2258
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->imsDeregDone(I)V

    .line 2259
    goto/16 :goto_1

    .line 2246
    .end local v1    # "type":I
    :sswitch_2c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2248
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2249
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->imsBearerInit(I)V

    .line 2250
    goto/16 :goto_1

    .line 2234
    .end local v1    # "type":I
    :sswitch_2d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2236
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2237
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2238
    .local v2, "aid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2239
    .local v3, "action":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2240
    .local v4, "capability":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->imsBearerStateNotify(IIILjava/lang/String;)V

    .line 2241
    goto/16 :goto_1

    .line 2224
    .end local v1    # "type":I
    .end local v2    # "aid":I
    .end local v3    # "action":I
    .end local v4    # "capability":Ljava/lang/String;
    :sswitch_2e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2226
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2227
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2228
    .local v2, "isEnable":Z
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->volteSetting(IZ)V

    .line 2229
    goto/16 :goto_1

    .line 2212
    .end local v1    # "type":I
    .end local v2    # "isEnable":Z
    :sswitch_2f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2214
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2215
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2216
    .local v2, "call_id":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2217
    .local v3, "ectResult":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 2218
    .local v4, "cause":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->ectIndication(IIII)V

    .line 2219
    goto/16 :goto_1

    .line 2203
    .end local v1    # "type":I
    .end local v2    # "call_id":I
    .end local v3    # "ectResult":I
    .end local v4    # "cause":I
    :sswitch_30
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2205
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2206
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->imsDisableStart(I)V

    .line 2207
    goto/16 :goto_1

    .line 2194
    .end local v1    # "type":I
    :sswitch_31
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2196
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2197
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->imsEnableStart(I)V

    .line 2198
    goto/16 :goto_1

    .line 2185
    .end local v1    # "type":I
    :sswitch_32
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2187
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2188
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->imsDisableDone(I)V

    .line 2189
    goto/16 :goto_1

    .line 2176
    .end local v1    # "type":I
    :sswitch_33
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2178
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2179
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->imsEnableDone(I)V

    .line 2180
    goto/16 :goto_1

    .line 2165
    .end local v1    # "type":I
    :sswitch_34
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2167
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2168
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2169
    .local v2, "registerState":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2170
    .local v3, "capability":I
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->imsRegistrationInfo(III)V

    .line 2171
    goto/16 :goto_1

    .line 2151
    .end local v1    # "type":I
    .end local v2    # "registerState":I
    .end local v3    # "capability":I
    :sswitch_35
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2153
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2154
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2155
    .local v2, "callId":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2156
    .local v3, "ptype":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2157
    .local v4, "urcIdx":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2158
    .restart local v5    # "totalUrcCount":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2159
    .restart local v6    # "rawData":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->imsEventPackageIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    goto/16 :goto_1

    .line 2140
    .end local v1    # "type":I
    .end local v2    # "callId":Ljava/lang/String;
    .end local v3    # "ptype":Ljava/lang/String;
    .end local v4    # "urcIdx":Ljava/lang/String;
    .end local v5    # "totalUrcCount":Ljava/lang/String;
    .end local v6    # "rawData":Ljava/lang/String;
    :sswitch_36
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2142
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2143
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 2144
    .local v2, "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2145
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 2146
    goto/16 :goto_1

    .line 2130
    .end local v1    # "type":I
    .end local v2    # "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    :sswitch_37
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2132
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2133
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2134
    .local v2, "status":I
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->onVolteSubscription(II)V

    .line 2135
    goto/16 :goto_1

    .line 2118
    .end local v1    # "type":I
    .end local v2    # "status":I
    :sswitch_38
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2120
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2121
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2122
    .local v2, "accountId":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2123
    .local v3, "broadcastFlag":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2124
    .local v4, "xuiInfo":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->onXui(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    goto/16 :goto_1

    .line 2107
    .end local v1    # "type":I
    .end local v2    # "accountId":Ljava/lang/String;
    .end local v3    # "broadcastFlag":Ljava/lang/String;
    .end local v4    # "xuiInfo":Ljava/lang/String;
    :sswitch_39
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2109
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2110
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2111
    .local v2, "result1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2112
    .local v3, "result2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->getProvisionDone(ILjava/lang/String;Ljava/lang/String;)V

    .line 2113
    goto/16 :goto_1

    .line 2096
    .end local v1    # "type":I
    .end local v2    # "result1":Ljava/lang/String;
    .end local v3    # "result2":Ljava/lang/String;
    :sswitch_3a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2098
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2099
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2100
    .local v2, "modeType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2101
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->onUssi(IILjava/lang/String;)V

    .line 2102
    goto/16 :goto_1

    .line 2084
    .end local v1    # "type":I
    .end local v2    # "modeType":I
    .end local v3    # "msg":Ljava/lang/String;
    :sswitch_3b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2086
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2087
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2088
    .local v2, "callId":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2089
    .local v3, "localVideoCap":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2090
    .local v4, "remoteVideoCap":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->videoCapabilityIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2091
    goto/16 :goto_1

    .line 2070
    .end local v1    # "type":I
    .end local v2    # "callId":Ljava/lang/String;
    .end local v3    # "localVideoCap":Ljava/lang/String;
    .end local v4    # "remoteVideoCap":Ljava/lang/String;
    :sswitch_3c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2072
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2073
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2074
    .restart local v2    # "callId":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2075
    .local v3, "callMode":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2076
    .local v4, "videoState":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2077
    .local v5, "audioDirection":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2078
    .local v6, "pau":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->callmodChangeIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    goto :goto_1

    .line 2055
    .end local v1    # "type":I
    .end local v2    # "callId":Ljava/lang/String;
    .end local v3    # "callMode":Ljava/lang/String;
    .end local v4    # "videoState":Ljava/lang/String;
    .end local v5    # "audioDirection":Ljava/lang/String;
    .end local v6    # "pau":Ljava/lang/String;
    :sswitch_3d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2057
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2058
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2059
    .restart local v2    # "callId":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2060
    .local v3, "dir":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2061
    .local v4, "sipMsgType":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2062
    .local v5, "method":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2063
    .local v6, "responseCode":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2064
    .local v7, "reasonText":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->sipCallProgressIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    goto :goto_1

    .line 2040
    .end local v1    # "type":I
    .end local v2    # "callId":Ljava/lang/String;
    .end local v3    # "dir":Ljava/lang/String;
    .end local v4    # "sipMsgType":Ljava/lang/String;
    .end local v5    # "method":Ljava/lang/String;
    .end local v6    # "responseCode":Ljava/lang/String;
    .end local v7    # "reasonText":Ljava/lang/String;
    :sswitch_3e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2042
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2043
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2044
    .local v2, "confCallId":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2045
    .local v3, "op":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2046
    .local v4, "num":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2047
    .local v5, "result":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2048
    .local v6, "cause":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2049
    .local v7, "joinedCallId":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->econfResultIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    goto :goto_1

    .line 2030
    .end local v1    # "type":I
    .end local v2    # "confCallId":Ljava/lang/String;
    .end local v3    # "op":Ljava/lang/String;
    .end local v4    # "num":Ljava/lang/String;
    .end local v5    # "result":Ljava/lang/String;
    .end local v6    # "cause":Ljava/lang/String;
    .end local v7    # "joinedCallId":Ljava/lang/String;
    :sswitch_3f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2032
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2033
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2034
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->callInfoIndication(ILjava/util/ArrayList;)V

    .line 2035
    goto :goto_1

    .line 2019
    .end local v1    # "type":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_40
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2021
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2022
    .restart local v1    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;-><init>()V

    .line 2023
    .local v2, "inCallNotify":Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2024
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->incomingCallIndication(ILvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;)V

    .line 2025
    nop

    .line 2747
    .end local v1    # "type":I
    .end local v2    # "inCallNotify":Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_40
        0x2 -> :sswitch_3f
        0x3 -> :sswitch_3e
        0x4 -> :sswitch_3d
        0x5 -> :sswitch_3c
        0x6 -> :sswitch_3b
        0x7 -> :sswitch_3a
        0x8 -> :sswitch_39
        0x9 -> :sswitch_38
        0xa -> :sswitch_37
        0xb -> :sswitch_36
        0xc -> :sswitch_35
        0xd -> :sswitch_34
        0xe -> :sswitch_33
        0xf -> :sswitch_32
        0x10 -> :sswitch_31
        0x11 -> :sswitch_30
        0x12 -> :sswitch_2f
        0x13 -> :sswitch_2e
        0x14 -> :sswitch_2d
        0x15 -> :sswitch_2c
        0x16 -> :sswitch_2b
        0x17 -> :sswitch_2a
        0x18 -> :sswitch_29
        0x19 -> :sswitch_28
        0x1a -> :sswitch_27
        0x1b -> :sswitch_26
        0x1c -> :sswitch_25
        0x1d -> :sswitch_24
        0x1e -> :sswitch_23
        0x1f -> :sswitch_22
        0x20 -> :sswitch_21
        0x21 -> :sswitch_20
        0x22 -> :sswitch_1f
        0x23 -> :sswitch_1e
        0x24 -> :sswitch_1d
        0x25 -> :sswitch_1c
        0x26 -> :sswitch_1b
        0x27 -> :sswitch_1a
        0x28 -> :sswitch_19
        0x29 -> :sswitch_18
        0x2a -> :sswitch_17
        0x2b -> :sswitch_16
        0x2c -> :sswitch_15
        0x2d -> :sswitch_14
        0x2e -> :sswitch_13
        0x2f -> :sswitch_12
        0x30 -> :sswitch_11
        0x31 -> :sswitch_10
        0x32 -> :sswitch_f
        0x33 -> :sswitch_e
        0x34 -> :sswitch_d
        0x35 -> :sswitch_c
        0x36 -> :sswitch_b
        0x37 -> :sswitch_a
        0x38 -> :sswitch_9
        0xf43484e -> :sswitch_8
        0xf444247 -> :sswitch_7
        0xf445343 -> :sswitch_6
        0xf485348 -> :sswitch_5
        0xf494e54 -> :sswitch_4
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 1970
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1998
    const-string v0, "vendor.mediatek.hardware.mtkradioex@3.0::IImsRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1999
    return-object p0

    .line 2001
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2005
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 2006
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1960
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 1992
    const/4 v0, 0x1

    return v0
.end method
