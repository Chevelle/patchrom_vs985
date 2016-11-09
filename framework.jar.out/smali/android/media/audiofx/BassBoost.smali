.class public Landroid/media/audiofx/BassBoost;
.super Landroid/media/audiofx/AudioEffect;
.source "BassBoost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/BassBoost$OnParameterChangeListener;,
        Landroid/media/audiofx/BassBoost$BaseParameterListener;,
        Landroid/media/audiofx/BassBoost$Settings;
    }
.end annotation


# static fields
.field public static final PARAM_CENTER_FREQUENCY:I = 0x2

.field public static final PARAM_STRENGTH:I = 0x1

.field public static final PARAM_STRENGTH_SUPPORTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BassBoost"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/BassBoost$BaseParameterListener;

.field private mParamListener:Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;

.field private mStrengthSupported:Z


# direct methods
.method static synthetic -get0(Landroid/media/audiofx/BassBoost;)Landroid/media/audiofx/BassBoost$OnParameterChangeListener;
    .locals 1

    iget-object v0, p0, Landroid/media/audiofx/BassBoost;->mParamListener:Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/audiofx/BassBoost;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/audiofx/BassBoost;->mParamListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method public constructor <init>(II)V
    .locals 6
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    sget-object v3, Landroid/media/audiofx/BassBoost;->EFFECT_TYPE_BASS_BOOST:Ljava/util/UUID;

    sget-object v4, Landroid/media/audiofx/BassBoost;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v3, v4, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 65
    iput-boolean v2, p0, Landroid/media/audiofx/BassBoost;->mStrengthSupported:Z

    .line 70
    iput-object v5, p0, Landroid/media/audiofx/BassBoost;->mParamListener:Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    .line 75
    iput-object v5, p0, Landroid/media/audiofx/BassBoost;->mBaseParamListener:Landroid/media/audiofx/BassBoost$BaseParameterListener;

    .line 80
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/media/audiofx/BassBoost;->mParamListenerLock:Ljava/lang/Object;

    .line 101
    if-nez p2, :cond_0

    .line 102
    const-string/jumbo v3, "BassBoost"

    const-string/jumbo v4, "WARNING: attaching a BassBoost to global output mix is deprecated!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    new-array v0, v1, [I

    .line 106
    .local v0, "value":[I
    invoke-virtual {p0, v2, v0}, Landroid/media/audiofx/BassBoost;->getParameter(I[I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/BassBoost;->checkStatus(I)V

    .line 107
    aget v3, v0, v2

    if-eqz v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Landroid/media/audiofx/BassBoost;->mStrengthSupported:Z

    .line 98
    return-void

    :cond_1
    move v1, v2

    .line 107
    goto :goto_0
.end method


# virtual methods
.method public getCenterFrequency()S
    .locals 3

    .prologue
    .line 177
    const/4 v2, 0x1

    :try_start_0
    new-array v1, v2, [S

    .line 178
    .local v1, "value":[S
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/BassBoost;->getParameter(I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/BassBoost;->checkStatus(I)V

    .line 179
    const/4 v2, 0x0

    aget-short v2, v1, v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 180
    .end local v1    # "value":[S
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/16 v2, 0x37

    return v2
.end method

.method public getProperties()Landroid/media/audiofx/BassBoost$Settings;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 308
    new-instance v0, Landroid/media/audiofx/BassBoost$Settings;

    invoke-direct {v0}, Landroid/media/audiofx/BassBoost$Settings;-><init>()V

    .line 309
    .local v0, "settings":Landroid/media/audiofx/BassBoost$Settings;
    new-array v1, v2, [S

    .line 310
    .local v1, "value":[S
    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/BassBoost;->getParameter(I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/BassBoost;->checkStatus(I)V

    .line 311
    const/4 v2, 0x0

    aget-short v2, v1, v2

    iput-short v2, v0, Landroid/media/audiofx/BassBoost$Settings;->strength:S

    .line 312
    return-object v0
.end method

.method public getRoundedStrength()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 145
    new-array v0, v1, [S

    .line 146
    .local v0, "value":[S
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/BassBoost;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/BassBoost;->checkStatus(I)V

    .line 147
    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getStrengthSupported()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/media/audiofx/BassBoost;->mStrengthSupported:Z

    return v0
.end method

.method public setCenterFrequency(S)V
    .locals 2
    .param p1, "freq"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0, v1, p1}, Landroid/media/audiofx/BassBoost;->setParameter(IS)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/BassBoost;->checkStatus(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public setParameterListener(Landroid/media/audiofx/BassBoost$OnParameterChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    .prologue
    .line 240
    iget-object v1, p0, Landroid/media/audiofx/BassBoost;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    iget-object v0, p0, Landroid/media/audiofx/BassBoost;->mParamListener:Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    if-nez v0, :cond_0

    .line 242
    iput-object p1, p0, Landroid/media/audiofx/BassBoost;->mParamListener:Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    .line 243
    new-instance v0, Landroid/media/audiofx/BassBoost$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/media/audiofx/BassBoost$BaseParameterListener;-><init>(Landroid/media/audiofx/BassBoost;Landroid/media/audiofx/BassBoost$BaseParameterListener;)V

    iput-object v0, p0, Landroid/media/audiofx/BassBoost;->mBaseParamListener:Landroid/media/audiofx/BassBoost$BaseParameterListener;

    .line 244
    iget-object v0, p0, Landroid/media/audiofx/BassBoost;->mBaseParamListener:Landroid/media/audiofx/BassBoost$BaseParameterListener;

    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 239
    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setProperties(Landroid/media/audiofx/BassBoost$Settings;)V
    .locals 2
    .param p1, "settings"    # Landroid/media/audiofx/BassBoost$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 325
    iget-short v0, p1, Landroid/media/audiofx/BassBoost$Settings;->strength:S

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/BassBoost;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/BassBoost;->checkStatus(I)V

    .line 324
    return-void
.end method

.method public setStrength(S)V
    .locals 1
    .param p1, "strength"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/BassBoost;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/BassBoost;->checkStatus(I)V

    .line 131
    return-void
.end method
