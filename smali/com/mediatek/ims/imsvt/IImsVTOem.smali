.class public interface abstract Lcom/mediatek/ims/imsvt/IImsVTOem;
.super Ljava/lang/Object;
.source "IImsVTOem.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/imsvt/IImsVTOem$Stub;,
        Lcom/mediatek/ims/imsvt/IImsVTOem$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.ims.imsvt.IImsVTOem"


# virtual methods
.method public abstract setFps(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
