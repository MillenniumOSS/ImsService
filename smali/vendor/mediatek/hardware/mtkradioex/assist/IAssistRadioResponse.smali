.class public interface abstract Lvendor/mediatek/hardware/mtkradioex/assist/IAssistRadioResponse;
.super Ljava/lang/Object;
.source "IAssistRadioResponse.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/mediatek/hardware/mtkradioex/assist/IAssistRadioResponse$Stub;,
        Lvendor/mediatek/hardware/mtkradioex/assist/IAssistRadioResponse$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "91361cead660c3643947b66815e23ce8137d7efa"

.field public static final VERSION:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 204
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "vendor$mediatek$hardware$mtkradioex$assist$IAssistRadioResponse"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/mediatek/hardware/mtkradioex/assist/IAssistRadioResponse;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setFdModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract syncDataSettingsToMdResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
