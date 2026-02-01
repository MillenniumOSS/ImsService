.class public interface abstract Lcom/mediatek/common/geofence/IMtkGeofence;
.super Ljava/lang/Object;
.source "IMtkGeofence.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/geofence/IMtkGeofence$Stub;,
        Lcom/mediatek/common/geofence/IMtkGeofence$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.geofence.IMtkGeofence"


# virtual methods
.method public abstract addCircularFence(IDDDIIIILcom/mediatek/common/geofence/IMtkGeofenceCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract pauseGeofence(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerForMonitorStateChangeCallback(Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeGeofence(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract resumeGeofence(II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterForMonitorStateChangeCallback(Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
