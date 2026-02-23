.class public abstract Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;
.super Landroid/os/Binder;
.source "IMtkRadioExImsIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_audioIndication:I = 0xb

.field static final TRANSACTION_callInfoIndication:I = 0x1d

.field static final TRANSACTION_callRatIndication:I = 0x29

.field static final TRANSACTION_callmodChangeIndicator:I = 0x1e

.field static final TRANSACTION_cdmaNewSmsEx:I = 0x4

.field static final TRANSACTION_econfResultIndication:I = 0x1f

.field static final TRANSACTION_ectIndication:I = 0x1c

.field static final TRANSACTION_eregrtInfoInd:I = 0x13

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_imsBearerInit:I = 0x2

.field static final TRANSACTION_imsBearerStateNotify:I = 0x1

.field static final TRANSACTION_imsCfgConfigChanged:I = 0x2b

.field static final TRANSACTION_imsCfgConfigLoaded:I = 0x2d

.field static final TRANSACTION_imsCfgDynamicImsSwitchComplete:I = 0x2a

.field static final TRANSACTION_imsCfgFeatureChanged:I = 0x2c

.field static final TRANSACTION_imsConferenceInfoIndication:I = 0x21

.field static final TRANSACTION_imsDataInfoNotify:I = 0x3

.field static final TRANSACTION_imsDialogIndication:I = 0x23

.field static final TRANSACTION_imsEventPackageIndication:I = 0x27

.field static final TRANSACTION_imsRedialEmergencyIndication:I = 0x25

.field static final TRANSACTION_imsRegFlagInd:I = 0x14

.field static final TRANSACTION_imsRegInfoInd:I = 0x12

.field static final TRANSACTION_imsRegStatusReport:I = 0x11

.field static final TRANSACTION_imsRegistrationInfo:I = 0xe

.field static final TRANSACTION_imsRtpInfo:I = 0x15

.field static final TRANSACTION_imsSupportEcc:I = 0xf

.field static final TRANSACTION_incomingCallSipInviteIndication:I = 0x2f

.field static final TRANSACTION_lteMessageWaitingIndication:I = 0x22

.field static final TRANSACTION_newSmsEx:I = 0x6

.field static final TRANSACTION_newSmsStatusReportEx:I = 0x5

.field static final TRANSACTION_noEmergencyCallbackMode:I = 0x24

.field static final TRANSACTION_onMDInternetUsageInd:I = 0x1b

.field static final TRANSACTION_onSsacStatus:I = 0x2e

.field static final TRANSACTION_onUssi:I = 0x17

.field static final TRANSACTION_onVolteSubscription:I = 0x18

.field static final TRANSACTION_onXui:I = 0x16

.field static final TRANSACTION_rttCapabilityIndication:I = 0x9

.field static final TRANSACTION_rttModifyRequestReceive:I = 0xa

.field static final TRANSACTION_rttModifyResponse:I = 0x7

.field static final TRANSACTION_rttTextReceive:I = 0x8

.field static final TRANSACTION_sendVopsIndication:I = 0xc

.field static final TRANSACTION_sipCallProgressIndicator:I = 0x20

.field static final TRANSACTION_sipHeaderReport:I = 0x28

.field static final TRANSACTION_sipRegInfoInd:I = 0x10

.field static final TRANSACTION_speechCodecInfoIndication:I = 0x26

.field static final TRANSACTION_videoCapabilityIndicator:I = 0x19

.field static final TRANSACTION_videoRingtoneEventInd:I = 0x1a

.field static final TRANSACTION_volteSetting:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 183
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 184
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->markVintfStability()V

    .line 185
    sget-object v0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 193
    if-nez p0, :cond_0

    .line 194
    const/4 v0, 0x0

    return-object v0

    .line 196
    :cond_0
    sget-object v0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 197
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication;

    if-eqz v1, :cond_1

    .line 198
    move-object v1, v0

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication;

    return-object v1

    .line 200
    :cond_1
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 204
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    move-object v9, p2

    move-object/from16 v10, p3

    sget-object v11, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 209
    .local v11, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v12, 0x1

    if-lt p1, v12, :cond_0

    if-gt p1, v1, :cond_0

    .line 210
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 213
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    return v12

    .line 216
    :cond_1
    if-ne p1, v1, :cond_2

    .line 217
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    return v12

    .line 221
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 222
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    return v12

    .line 226
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 806
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 795
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 797
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 799
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 800
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 801
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->incomingCallSipInviteIndication(ILjava/lang/String;Ljava/lang/String;)V

    .line 802
    goto/16 :goto_0

    .line 785
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 787
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 788
    .local v2, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 789
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->onSsacStatus(I[I)V

    .line 790
    goto/16 :goto_0

    .line 777
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 778
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 779
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->imsCfgConfigLoaded(I)V

    .line 780
    goto/16 :goto_0

    .line 763
    .end local v1    # "_arg0":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 765
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 767
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 769
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 770
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 771
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->imsCfgFeatureChanged(IIII)V

    .line 772
    goto/16 :goto_0

    .line 749
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 751
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 753
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 755
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 756
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 757
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->imsCfgConfigChanged(IILjava/lang/String;Ljava/lang/String;)V

    .line 758
    goto/16 :goto_0

    .line 741
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 742
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 743
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->imsCfgDynamicImsSwitchComplete(I)V

    .line 744
    goto/16 :goto_0

    .line 729
    .end local v1    # "_arg0":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 731
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 733
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 734
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 735
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->callRatIndication(III)V

    .line 736
    goto/16 :goto_0

    .line 719
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 721
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 722
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 723
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->sipHeaderReport(I[Ljava/lang/String;)V

    .line 724
    goto/16 :goto_0

    .line 701
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 703
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 705
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 707
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 709
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 711
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 712
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 713
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->imsEventPackageIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    goto/16 :goto_0

    .line 691
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 693
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 694
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 695
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->speechCodecInfoIndication(II)V

    .line 696
    goto/16 :goto_0

    .line 681
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 683
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 684
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 685
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->imsRedialEmergencyIndication(ILjava/lang/String;)V

    .line 686
    goto/16 :goto_0

    .line 673
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 674
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->noEmergencyCallbackMode(I)V

    .line 676
    goto/16 :goto_0

    .line 663
    .end local v1    # "_arg0":I
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 665
    .restart local v1    # "_arg0":I
    sget-object v2, Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;

    .line 666
    .local v2, "_arg1":[Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 667
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->imsDialogIndication(I[Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;)V

    .line 668
    goto/16 :goto_0

    .line 645
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 647
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 649
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 651
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 653
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 655
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 656
    .restart local v6    # "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 657
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->lteMessageWaitingIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    goto/16 :goto_0

    .line 635
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 637
    .restart local v1    # "_arg0":I
    sget-object v2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsConfParticipant;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lvendor/mediatek/hardware/mtkradioex/ims/ImsConfParticipant;

    .line 638
    .local v2, "_arg1":[Lvendor/mediatek/hardware/mtkradioex/ims/ImsConfParticipant;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 639
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->imsConferenceInfoIndication(I[Lvendor/mediatek/hardware/mtkradioex/ims/ImsConfParticipant;)V

    .line 640
    goto/16 :goto_0

    .line 615
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Lvendor/mediatek/hardware/mtkradioex/ims/ImsConfParticipant;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 617
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 619
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 621
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 623
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 625
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 627
    .restart local v6    # "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 628
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->sipCallProgressIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    goto/16 :goto_0

    .line 595
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Ljava/lang/String;
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 597
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 599
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 601
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 603
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 605
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 607
    .restart local v6    # "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 608
    .restart local v7    # "_arg6":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 609
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->econfResultIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    goto/16 :goto_0

    .line 577
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Ljava/lang/String;
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 579
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 581
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 583
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 585
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 587
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 588
    .restart local v6    # "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->callmodChangeIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    goto/16 :goto_0

    .line 567
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 569
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 570
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 571
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->callInfoIndication(I[Ljava/lang/String;)V

    .line 572
    goto/16 :goto_0

    .line 553
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 555
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 557
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 559
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 560
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 561
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->ectIndication(IIII)V

    .line 562
    goto/16 :goto_0

    .line 543
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 545
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 546
    .local v2, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 547
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->onMDInternetUsageInd(I[I)V

    .line 548
    goto/16 :goto_0

    .line 533
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[I
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 535
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 537
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->videoRingtoneEventInd(I[Ljava/lang/String;)V

    .line 538
    goto/16 :goto_0

    .line 519
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 521
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 523
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 525
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 526
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->videoCapabilityIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    goto/16 :goto_0

    .line 509
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 511
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 512
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 513
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->onVolteSubscription(II)V

    .line 514
    goto/16 :goto_0

    .line 497
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 499
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 501
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 502
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->onUssi(IILjava/lang/String;)V

    .line 504
    goto/16 :goto_0

    .line 483
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 485
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 489
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 490
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->onXui(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    goto/16 :goto_0

    .line 461
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 463
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 465
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 467
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 469
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 471
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 473
    .restart local v6    # "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 475
    .restart local v7    # "_arg6":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 476
    .local v8, "_arg7":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 477
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->imsRtpInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    goto/16 :goto_0

    .line 451
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":Ljava/lang/String;
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 453
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 454
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->imsRegFlagInd(II)V

    .line 456
    goto/16 :goto_0

    .line 441
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 443
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 444
    .local v2, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->eregrtInfoInd(I[I)V

    .line 446
    goto/16 :goto_0

    .line 431
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[I
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 433
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 434
    .restart local v2    # "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->imsRegInfoInd(I[I)V

    .line 436
    goto/16 :goto_0

    .line 421
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[I
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 423
    .restart local v1    # "_arg0":I
    sget-object v2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsRegStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsRegStatusInfo;

    .line 424
    .local v2, "_arg1":Lvendor/mediatek/hardware/mtkradioex/ims/ImsRegStatusInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->imsRegStatusReport(ILvendor/mediatek/hardware/mtkradioex/ims/ImsRegStatusInfo;)V

    .line 426
    goto/16 :goto_0

    .line 407
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lvendor/mediatek/hardware/mtkradioex/ims/ImsRegStatusInfo;
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 409
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 411
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 413
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 414
    .local v4, "_arg3":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->sipRegInfoInd(III[Ljava/lang/String;)V

    .line 416
    goto/16 :goto_0

    .line 397
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[Ljava/lang/String;
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 399
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 400
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 401
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->imsSupportEcc(II)V

    .line 402
    goto/16 :goto_0

    .line 385
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 387
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 389
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 390
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->imsRegistrationInfo(III)V

    .line 392
    goto/16 :goto_0

    .line 375
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 377
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 378
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->volteSetting(IZ)V

    .line 380
    goto/16 :goto_0

    .line 365
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 367
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 368
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->sendVopsIndication(II)V

    .line 370
    goto/16 :goto_0

    .line 353
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 355
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 357
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 358
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->audioIndication(III)V

    .line 360
    goto/16 :goto_0

    .line 341
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 343
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 345
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 346
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->rttModifyRequestReceive(III)V

    .line 348
    goto/16 :goto_0

    .line 323
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 325
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 327
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 329
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 331
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 333
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 334
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->rttCapabilityIndication(IIIIII)V

    .line 336
    goto/16 :goto_0

    .line 309
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 311
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 313
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 315
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->rttTextReceive(IIILjava/lang/String;)V

    .line 318
    goto/16 :goto_0

    .line 297
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 299
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 301
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 302
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->rttModifyResponse(III)V

    .line 304
    goto :goto_0

    .line 287
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 289
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 290
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->newSmsEx(I[B)V

    .line 292
    goto :goto_0

    .line 277
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 279
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 280
    .restart local v2    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->newSmsStatusReportEx(I[B)V

    .line 282
    goto :goto_0

    .line 267
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 269
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/radio/messaging/CdmaSmsMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/messaging/CdmaSmsMessage;

    .line 270
    .local v2, "_arg1":Landroid/hardware/radio/messaging/CdmaSmsMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->cdmaNewSmsEx(ILandroid/hardware/radio/messaging/CdmaSmsMessage;)V

    .line 272
    goto :goto_0

    .line 253
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/messaging/CdmaSmsMessage;
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 255
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 260
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->imsDataInfoNotify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    goto :goto_0

    .line 245
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 246
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->imsBearerInit(I)V

    .line 248
    goto :goto_0

    .line 231
    .end local v1    # "_arg0":I
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 233
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 235
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 237
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 238
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;->imsBearerStateNotify(IIILjava/lang/String;)V

    .line 240
    nop

    .line 809
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :goto_0
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
