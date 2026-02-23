.class public Lcom/mediatek/ims/internal/VTDummySource;
.super Lcom/mediatek/ims/internal/VTSource;
.source "VTDummySource.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VT SRC_Dummy"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 113
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource;-><init>()V

    .line 114
    const-string v0, "VT SRC_Dummy"

    const-string v1, "[INT] [VTDummySource] Finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method public static getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;
    .locals 8

    .line 65
    const-string v0, "[getAllCameraResolutions] "

    const-string v1, "[STC] [getAllCameraResolutions] Start"

    const-string v2, "VT SRC_Dummy"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v1, Lcom/mediatek/ims/internal/VTDummySource;->sCameraResolutions:[Lcom/mediatek/ims/internal/VTSource$Resolution;

    if-nez v1, :cond_1

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v1, "sensorResolutions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/ims/internal/VTSource$Resolution;>;"
    :try_start_0
    new-instance v3, Lcom/mediatek/ims/internal/VTSource$Resolution;

    invoke-direct {v3}, Lcom/mediatek/ims/internal/VTSource$Resolution;-><init>()V

    .line 72
    .local v3, "resolution":Lcom/mediatek/ims/internal/VTSource$Resolution;
    const/4 v4, 0x0

    iput v4, v3, Lcom/mediatek/ims/internal/VTSource$Resolution;->mId:I

    .line 73
    const/16 v5, 0x14e0

    iput v5, v3, Lcom/mediatek/ims/internal/VTSource$Resolution;->mMaxWidth:I

    .line 74
    iput v5, v3, Lcom/mediatek/ims/internal/VTSource$Resolution;->mMaxHeight:I

    .line 75
    const/16 v5, 0x5a

    iput v5, v3, Lcom/mediatek/ims/internal/VTSource$Resolution;->mDegree:I

    .line 76
    const/4 v5, 0x1

    iput v5, v3, Lcom/mediatek/ims/internal/VTSource$Resolution;->mFacing:I

    .line 77
    const/4 v6, 0x3

    iput v6, v3, Lcom/mediatek/ims/internal/VTSource$Resolution;->mHal:I

    .line 78
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v7, Lcom/mediatek/ims/internal/VTSource$Resolution;

    invoke-direct {v7}, Lcom/mediatek/ims/internal/VTSource$Resolution;-><init>()V

    .line 82
    .local v7, "resolution2":Lcom/mediatek/ims/internal/VTSource$Resolution;
    iput v5, v7, Lcom/mediatek/ims/internal/VTSource$Resolution;->mId:I

    .line 83
    const/16 v5, 0xcc0

    iput v5, v7, Lcom/mediatek/ims/internal/VTSource$Resolution;->mMaxWidth:I

    .line 84
    iput v5, v7, Lcom/mediatek/ims/internal/VTSource$Resolution;->mMaxHeight:I

    .line 85
    const/16 v5, 0x10e

    iput v5, v7, Lcom/mediatek/ims/internal/VTSource$Resolution;->mDegree:I

    .line 86
    iput v4, v7, Lcom/mediatek/ims/internal/VTSource$Resolution;->mFacing:I

    .line 87
    iput v6, v3, Lcom/mediatek/ims/internal/VTSource$Resolution;->mHal:I

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    nop

    .end local v3    # "resolution":Lcom/mediatek/ims/internal/VTSource$Resolution;
    .end local v7    # "resolution2":Lcom/mediatek/ims/internal/VTSource$Resolution;
    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[STC] [getAllCameraResolutions] getCameraIdList with exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 95
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/mediatek/ims/internal/VTSource$Resolution;

    sput-object v0, Lcom/mediatek/ims/internal/VTDummySource;->sCameraResolutions:[Lcom/mediatek/ims/internal/VTSource$Resolution;

    .line 96
    sget-object v0, Lcom/mediatek/ims/internal/VTDummySource;->sCameraResolutions:[Lcom/mediatek/ims/internal/VTSource$Resolution;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/ims/internal/VTSource$Resolution;

    sput-object v0, Lcom/mediatek/ims/internal/VTDummySource;->sCameraResolutions:[Lcom/mediatek/ims/internal/VTSource$Resolution;

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[STC] [getAllCameraResolutions] resolution size:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v1    # "sensorResolutions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/ims/internal/VTSource$Resolution;>;"
    :cond_1
    const-string v0, "[STC] [getAllCameraResolutions] Finish"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v0, Lcom/mediatek/ims/internal/VTDummySource;->sCameraResolutions:[Lcom/mediatek/ims/internal/VTSource$Resolution;

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[STC] [setContext] context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VT SRC_Dummy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sput-object p0, Lcom/mediatek/ims/internal/VTDummySource;->sContext:Landroid/content/Context;

    .line 57
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 146
    return-void
.end method

.method public getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public open(Ljava/lang/String;)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 139
    return-void
.end method

.method public release()V
    .locals 0

    .line 153
    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 0
    .param p1, "degree"    # I

    .line 217
    return-void
.end method

.method public setPauseImage(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .line 123
    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .line 171
    return-void
.end method

.method public setRecordSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .line 162
    return-void
.end method

.method public setZoom(F)V
    .locals 0
    .param p1, "zoomValue"    # F

    .line 179
    return-void
.end method

.method public startRecording()V
    .locals 0

    .line 195
    return-void
.end method

.method public stopRecording()V
    .locals 0

    .line 203
    return-void
.end method

.method public stopRecordingAndPreview()V
    .locals 0

    .line 210
    return-void
.end method
