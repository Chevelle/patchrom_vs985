.class public final Lcom/android/server/power/PowerProfileManager;
.super Ljava/lang/Object;
.source "PowerProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerProfileManager$PowerProfile;,
        Lcom/android/server/power/PowerProfileManager$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final POWER_HINT_POWER_PROFILE:I = 0x100

.field private static final PROFILE_CONFIG_FILE:Ljava/lang/String; = "power_profiles.xml"

.field private static final PROFILE_SEPARATOR:Ljava/lang/String; = ":"

.field private static final SYSTEM_PROFILE_CONFIG:Ljava/lang/String; = "/system/etc/power_profiles.xml"

.field private static final TAG:Ljava/lang/String; = "PowerProfileManager"


# instance fields
.field private mConfigured:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentPowerProfileId:I

.field private mDefaultProfileId:I

.field private mDisabledProfileId:I

.field private mEnabled:Z

.field private mForceProfileId:I

.field private mHandler:Landroid/os/Handler;

.field private mLowPowerMode:Z

.field private mLowPowerModeId:I

.field private mPowerManager:Lcom/android/server/power/PowerManagerService;

.field private mPowerPlugged:Z

.field private mPowerProfilePlugged:Z

.field private mProfilesApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProfilesIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/PowerProfileManager$PowerProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOffProfileId:I

.field private mSettingsObserver:Lcom/android/server/power/PowerProfileManager$SettingsObserver;

.field private mUserProfileConfig:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/power/PowerProfileManager;Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerProfileManager;->updateSettings(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "powerManager"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    const/4 v1, -0x1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v1, p0, Lcom/android/server/power/PowerProfileManager;->mCurrentPowerProfileId:I

    .line 59
    iput v1, p0, Lcom/android/server/power/PowerProfileManager;->mScreenOffProfileId:I

    .line 60
    iput v1, p0, Lcom/android/server/power/PowerProfileManager;->mDefaultProfileId:I

    .line 61
    iput v1, p0, Lcom/android/server/power/PowerProfileManager;->mDisabledProfileId:I

    .line 63
    iput v1, p0, Lcom/android/server/power/PowerProfileManager;->mForceProfileId:I

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerProfileManager;->mProfilesIds:Ljava/util/Map;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerProfileManager;->mHandler:Landroid/os/Handler;

    .line 69
    iput v1, p0, Lcom/android/server/power/PowerProfileManager;->mLowPowerModeId:I

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerProfileManager;->mProfilesApps:Ljava/util/Map;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerProfileManager;->mPowerProfilePlugged:Z

    .line 110
    iput-object p1, p0, Lcom/android/server/power/PowerProfileManager;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/android/server/power/PowerProfileManager;->mPowerManager:Lcom/android/server/power/PowerManagerService;

    .line 109
    return-void
.end method

.method private getHalString(I)Ljava/lang/String;
    .locals 4
    .param p1, "profileId"    # I

    .prologue
    const/4 v3, 0x0

    .line 308
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/android/server/power/PowerProfileManager;->mProfilesIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerProfileManager$PowerProfile;

    .line 310
    .local v0, "p":Lcom/android/server/power/PowerProfileManager$PowerProfile;
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Lcom/android/server/power/PowerProfileManager$PowerProfile;->toHalString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 314
    .end local v0    # "p":Lcom/android/server/power/PowerProfileManager$PowerProfile;
    :cond_0
    return-object v3
.end method

.method private getProfileId(Ljava/lang/String;)I
    .locals 4
    .param p1, "profile"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v3, p0, Lcom/android/server/power/PowerProfileManager;->mProfilesIds:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 174
    .local v1, "nextId":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 176
    .local v0, "id":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/power/PowerProfileManager;->mProfilesIds:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerProfileManager$PowerProfile;

    iget-object v2, v3, Lcom/android/server/power/PowerProfileManager$PowerProfile;->mName:Ljava/lang/String;

    .line 177
    .local v2, "profileName":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 181
    .end local v0    # "id":Ljava/lang/Integer;
    .end local v2    # "profileName":Ljava/lang/String;
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method private loadConfig(Ljava/lang/String;)V
    .locals 10
    .param p1, "configFile"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 318
    iget-object v6, p0, Lcom/android/server/power/PowerProfileManager;->mProfilesIds:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 320
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_0

    .line 322
    const-string/jumbo v6, "PowerProfileManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "file not found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iput-boolean v9, p0, Lcom/android/server/power/PowerProfileManager;->mConfigured:Z

    .line 324
    return-void

    .line 328
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 329
    .local v5, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 331
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 332
    .local v3, "fIs":Ljava/io/FileInputStream;
    const-string/jumbo v6, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 333
    const/4 v6, 0x0

    invoke-interface {v4, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 334
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 335
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerProfileManager;->parseXML(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 336
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/power/PowerProfileManager;->mConfigured:Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v3    # "fIs":Ljava/io/FileInputStream;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "PowerProfileManager"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 338
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 339
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v6, "PowerProfileManager"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private parseAppsData(Ljava/lang/String;)V
    .locals 7
    .param p1, "appData"    # Ljava/lang/String;

    .prologue
    .line 403
    iget-object v5, p0, Lcom/android/server/power/PowerProfileManager;->mProfilesApps:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 405
    if-nez p1, :cond_0

    .line 406
    return-void

    .line 408
    :cond_0
    const-string/jumbo v5, "\\|\\|"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "appEntries":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_2

    .line 410
    aget-object v5, v0, v3

    const-string/jumbo v6, "\\|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "appEntry":[Ljava/lang/String;
    array-length v5, v1

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 412
    const/4 v5, 0x0

    aget-object v2, v1, v5

    .line 413
    .local v2, "componentName":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v4, v1, v5

    .line 414
    .local v4, "profileName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/power/PowerProfileManager;->mProfilesApps:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .end local v2    # "componentName":Ljava/lang/String;
    .end local v4    # "profileName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 402
    .end local v1    # "appEntry":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private parseXML(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 347
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 348
    .local v4, "eventType":I
    const/4 v2, 0x0

    .line 349
    .local v2, "currentProfile":Lcom/android/server/power/PowerProfileManager$PowerProfile;
    const/4 v5, 0x0

    .line 350
    .local v5, "i":I
    const/4 v3, 0x0

    .line 351
    .local v3, "disable":Z
    const/4 v7, 0x0

    .line 353
    .end local v2    # "currentProfile":Lcom/android/server/power/PowerProfileManager$PowerProfile;
    .local v7, "lowpower":Z
    :goto_0
    const/4 v10, 0x1

    if-eq v4, v10, :cond_6

    .line 354
    packed-switch v4, :pswitch_data_0

    .line 398
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    .line 358
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 359
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v10, "profile"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 360
    const/4 v3, 0x0

    .line 361
    const/4 v7, 0x0

    .line 363
    new-instance v2, Lcom/android/server/power/PowerProfileManager$PowerProfile;

    invoke-direct {v2, v12}, Lcom/android/server/power/PowerProfileManager$PowerProfile;-><init>(Lcom/android/server/power/PowerProfileManager$PowerProfile;)V

    .line 364
    .local v2, "currentProfile":Lcom/android/server/power/PowerProfileManager$PowerProfile;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 365
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    if-ge v0, v1, :cond_0

    .line 366
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 367
    .local v6, "key":Ljava/lang/String;
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 368
    .local v9, "value":Ljava/lang/String;
    iget-object v10, v2, Lcom/android/server/power/PowerProfileManager$PowerProfile;->mData:Ljava/util/Map;

    invoke-interface {v10, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string/jumbo v10, "name"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 370
    iput-object v9, v2, Lcom/android/server/power/PowerProfileManager$PowerProfile;->mName:Ljava/lang/String;

    .line 372
    :cond_1
    const-string/jumbo v10, "disable"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 373
    const/4 v3, 0x1

    .line 375
    :cond_2
    const-string/jumbo v10, "lowpower"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 376
    const/4 v7, 0x1

    .line 365
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 382
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "currentProfile":Lcom/android/server/power/PowerProfileManager$PowerProfile;
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :pswitch_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 383
    .restart local v8    # "name":Ljava/lang/String;
    const-string/jumbo v10, "profile"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 384
    if-eqz v2, :cond_0

    .line 385
    iget-object v10, v2, Lcom/android/server/power/PowerProfileManager$PowerProfile;->mName:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 386
    iput v5, v2, Lcom/android/server/power/PowerProfileManager$PowerProfile;->mId:I

    .line 387
    iget-object v10, p0, Lcom/android/server/power/PowerProfileManager;->mProfilesIds:Ljava/util/Map;

    iget v11, v2, Lcom/android/server/power/PowerProfileManager$PowerProfile;->mId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    if-eqz v3, :cond_4

    .line 389
    iput v5, p0, Lcom/android/server/power/PowerProfileManager;->mDisabledProfileId:I

    .line 391
    :cond_4
    if-eqz v7, :cond_5

    .line 392
    iput v5, p0, Lcom/android/server/power/PowerProfileManager;->mLowPowerModeId:I

    .line 395
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 346
    .end local v8    # "name":Ljava/lang/String;
    :cond_6
    return-void

    .line 354
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendToHal()V
    .locals 3

    .prologue
    .line 204
    iget v1, p0, Lcom/android/server/power/PowerProfileManager;->mCurrentPowerProfileId:I

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerProfileManager;->getHalString(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "halString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/android/server/power/PowerProfileManager;->mPowerManager:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x100

    invoke-virtual {v1, v2, v0}, Lcom/android/server/power/PowerManagerService;->powerHintStringInternal(ILjava/lang/String;)V

    .line 203
    :cond_0
    return-void
.end method

.method private updateSettings(Landroid/net/Uri;)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, -0x1

    const/4 v8, -0x2

    .line 420
    iget-boolean v7, p0, Lcom/android/server/power/PowerProfileManager;->mConfigured:Z

    if-nez v7, :cond_0

    .line 421
    return-void

    .line 424
    :cond_0
    iget-object v7, p0, Lcom/android/server/power/PowerProfileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 426
    .local v3, "resolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_2

    .line 428
    const-string/jumbo v7, "power_profile_apps"

    .line 427
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 426
    if-eqz v7, :cond_2

    .line 431
    const-string/jumbo v5, "power_profile_apps"

    .line 429
    invoke-static {v3, v5, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "appData":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerProfileManager;->parseAppsData(Ljava/lang/String;)V

    .line 419
    .end local v0    # "appData":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 437
    :cond_2
    const-string/jumbo v7, "power_profile_enabled"

    .line 436
    invoke-static {v3, v7, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_7

    const/4 v2, 0x1

    .line 440
    .local v2, "enabled":Z
    :goto_1
    const-string/jumbo v7, "power_profile_default"

    .line 439
    invoke-static {v3, v7, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, "defaultProfile":Ljava/lang/String;
    const-string/jumbo v7, "power_profile_screen_off"

    .line 442
    invoke-static {v3, v7, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 446
    .local v4, "screenOffProfile":Ljava/lang/String;
    const-string/jumbo v7, "power_profile_plugged"

    .line 445
    invoke-static {v3, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_8

    :goto_2
    iput-boolean v5, p0, Lcom/android/server/power/PowerProfileManager;->mPowerProfilePlugged:Z

    .line 449
    if-eqz v1, :cond_3

    .line 450
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerProfileManager;->getProfileId(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/power/PowerProfileManager;->mDefaultProfileId:I

    .line 451
    iget v5, p0, Lcom/android/server/power/PowerProfileManager;->mDefaultProfileId:I

    if-ne v5, v9, :cond_3

    .line 452
    iget v5, p0, Lcom/android/server/power/PowerProfileManager;->mDisabledProfileId:I

    iput v5, p0, Lcom/android/server/power/PowerProfileManager;->mDefaultProfileId:I

    .line 455
    :cond_3
    if-eqz v4, :cond_4

    .line 456
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerProfileManager;->getProfileId(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/power/PowerProfileManager;->mScreenOffProfileId:I

    .line 457
    iget v5, p0, Lcom/android/server/power/PowerProfileManager;->mScreenOffProfileId:I

    if-ne v5, v9, :cond_4

    .line 458
    iget v5, p0, Lcom/android/server/power/PowerProfileManager;->mDefaultProfileId:I

    iput v5, p0, Lcom/android/server/power/PowerProfileManager;->mScreenOffProfileId:I

    .line 467
    :cond_4
    iput-boolean v2, p0, Lcom/android/server/power/PowerProfileManager;->mEnabled:Z

    .line 468
    iget-boolean v5, p0, Lcom/android/server/power/PowerProfileManager;->mEnabled:Z

    if-eqz v5, :cond_9

    .line 469
    iget-boolean v5, p0, Lcom/android/server/power/PowerProfileManager;->mPowerPlugged:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/server/power/PowerProfileManager;->mPowerProfilePlugged:Z

    if-eqz v5, :cond_9

    .line 472
    :cond_5
    iget v5, p0, Lcom/android/server/power/PowerProfileManager;->mForceProfileId:I

    if-eq v5, v9, :cond_a

    .line 473
    iget v5, p0, Lcom/android/server/power/PowerProfileManager;->mForceProfileId:I

    iput v5, p0, Lcom/android/server/power/PowerProfileManager;->mCurrentPowerProfileId:I

    .line 479
    :goto_3
    iget-boolean v5, p0, Lcom/android/server/power/PowerProfileManager;->mLowPowerMode:Z

    if-eqz v5, :cond_6

    .line 480
    iget v5, p0, Lcom/android/server/power/PowerProfileManager;->mLowPowerModeId:I

    iput v5, p0, Lcom/android/server/power/PowerProfileManager;->mCurrentPowerProfileId:I

    .line 483
    :cond_6
    iget v5, p0, Lcom/android/server/power/PowerProfileManager;->mCurrentPowerProfileId:I

    if-eq v5, v9, :cond_1

    .line 484
    invoke-direct {p0}, Lcom/android/server/power/PowerProfileManager;->sendToHal()V

    goto :goto_0

    .line 436
    .end local v1    # "defaultProfile":Ljava/lang/String;
    .end local v2    # "enabled":Z
    .end local v4    # "screenOffProfile":Ljava/lang/String;
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "enabled":Z
    goto :goto_1

    .restart local v1    # "defaultProfile":Ljava/lang/String;
    .restart local v4    # "screenOffProfile":Ljava/lang/String;
    :cond_8
    move v5, v6

    .line 445
    goto :goto_2

    .line 470
    :cond_9
    iget v5, p0, Lcom/android/server/power/PowerProfileManager;->mDisabledProfileId:I

    iput v5, p0, Lcom/android/server/power/PowerProfileManager;->mCurrentPowerProfileId:I

    goto :goto_3

    .line 475
    :cond_a
    iget v5, p0, Lcom/android/server/power/PowerProfileManager;->mDefaultProfileId:I

    iput v5, p0, Lcom/android/server/power/PowerProfileManager;->mCurrentPowerProfileId:I

    goto :goto_3
.end method


# virtual methods
.method public getCurrentPowerProfile()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 236
    iget-boolean v0, p0, Lcom/android/server/power/PowerProfileManager;->mLowPowerMode:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/server/power/PowerProfileManager;->mProfilesIds:Ljava/util/Map;

    iget v1, p0, Lcom/android/server/power/PowerProfileManager;->mLowPowerModeId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerProfileManager$PowerProfile;

    iget-object v0, v0, Lcom/android/server/power/PowerProfileManager$PowerProfile;->mName:Ljava/lang/String;

    return-object v0

    .line 239
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerProfileManager;->mEnabled:Z

    if-eqz v0, :cond_2

    .line 240
    iget-boolean v0, p0, Lcom/android/server/power/PowerProfileManager;->mPowerPlugged:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerProfileManager;->mPowerProfilePlugged:Z

    if-eqz v0, :cond_2

    .line 243
    :cond_1
    iget v0, p0, Lcom/android/server/power/PowerProfileManager;->mForceProfileId:I

    if-eq v0, v1, :cond_3

    .line 244
    iget-object v0, p0, Lcom/android/server/power/PowerProfileManager;->mProfilesIds:Ljava/util/Map;

    iget v1, p0, Lcom/android/server/power/PowerProfileManager;->mForceProfileId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerProfileManager$PowerProfile;

    iget-object v0, v0, Lcom/android/server/power/PowerProfileManager$PowerProfile;->mName:Ljava/lang/String;

    return-object v0

    .line 241
    :cond_2
    const-string/jumbo v0, "disabled"

    return-object v0

    .line 246
    :cond_3
    iget v0, p0, Lcom/android/server/power/PowerProfileManager;->mCurrentPowerProfileId:I

    if-eq v0, v1, :cond_4

    .line 247
    iget-object v0, p0, Lcom/android/server/power/PowerProfileManager;->mProfilesIds:Ljava/util/Map;

    iget v1, p0, Lcom/android/server/power/PowerProfileManager;->mCurrentPowerProfileId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerProfileManager$PowerProfile;

    iget-object v0, v0, Lcom/android/server/power/PowerProfileManager$PowerProfile;->mName:Ljava/lang/String;

    return-object v0

    .line 249
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleAppChange(Landroid/content/Intent;)V
    .locals 6
    .param p1, "app"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 212
    iget-boolean v4, p0, Lcom/android/server/power/PowerProfileManager;->mEnabled:Z

    if-eqz v4, :cond_0

    .line 213
    iget v4, p0, Lcom/android/server/power/PowerProfileManager;->mForceProfileId:I

    if-eq v4, v5, :cond_1

    .line 217
    :cond_0
    return-void

    .line 214
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/power/PowerProfileManager;->mLowPowerMode:Z

    .line 212
    if-nez v4, :cond_0

    .line 215
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 216
    iget-boolean v4, p0, Lcom/android/server/power/PowerProfileManager;->mPowerPlugged:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/power/PowerProfileManager;->mPowerProfilePlugged:Z

    if-eqz v4, :cond_0

    .line 219
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "cName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/power/PowerProfileManager;->mProfilesApps:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 221
    .local v0, "appProfile":Ljava/lang/String;
    iget v3, p0, Lcom/android/server/power/PowerProfileManager;->mDefaultProfileId:I

    .line 222
    .local v3, "newPowerProfileId":I
    if-eqz v0, :cond_3

    .line 224
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerProfileManager;->getProfileId(Ljava/lang/String;)I

    move-result v1

    .line 225
    .local v1, "appProfileId":I
    if-eq v1, v5, :cond_3

    .line 226
    move v3, v1

    .line 229
    .end local v1    # "appProfileId":I
    :cond_3
    iget v4, p0, Lcom/android/server/power/PowerProfileManager;->mCurrentPowerProfileId:I

    if-eq v4, v3, :cond_4

    .line 230
    iput v3, p0, Lcom/android/server/power/PowerProfileManager;->mCurrentPowerProfileId:I

    .line 231
    invoke-direct {p0}, Lcom/android/server/power/PowerProfileManager;->sendToHal()V

    .line 211
    :cond_4
    return-void
.end method

.method public handleScreenChange(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, -0x1

    .line 185
    iget-boolean v0, p0, Lcom/android/server/power/PowerProfileManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 186
    iget v0, p0, Lcom/android/server/power/PowerProfileManager;->mForceProfileId:I

    if-eq v0, v1, :cond_1

    .line 189
    :cond_0
    return-void

    .line 187
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerProfileManager;->mLowPowerMode:Z

    .line 185
    if-nez v0, :cond_0

    .line 188
    iget-boolean v0, p0, Lcom/android/server/power/PowerProfileManager;->mPowerPlugged:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerProfileManager;->mPowerProfilePlugged:Z

    if-eqz v0, :cond_0

    .line 192
    :cond_2
    if-nez p1, :cond_3

    .line 193
    iget v0, p0, Lcom/android/server/power/PowerProfileManager;->mScreenOffProfileId:I

    iput v0, p0, Lcom/android/server/power/PowerProfileManager;->mCurrentPowerProfileId:I

    .line 197
    :goto_0
    iget v0, p0, Lcom/android/server/power/PowerProfileManager;->mCurrentPowerProfileId:I

    if-ne v0, v1, :cond_4

    .line 198
    return-void

    .line 195
    :cond_3
    iget v0, p0, Lcom/android/server/power/PowerProfileManager;->mDefaultProfileId:I

    iput v0, p0, Lcom/android/server/power/PowerProfileManager;->mCurrentPowerProfileId:I

    goto :goto_0

    .line 200
    :cond_4
    invoke-direct {p0}, Lcom/android/server/power/PowerProfileManager;->sendToHal()V

    .line 184
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 115
    const-string/jumbo v1, "/system/etc/power_profiles.xml"

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerProfileManager;->loadConfig(Ljava/lang/String;)V

    .line 117
    iget-boolean v1, p0, Lcom/android/server/power/PowerProfileManager;->mConfigured:Z

    if-eqz v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/android/server/power/PowerProfileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 120
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/server/power/PowerProfileManager;->mLowPowerModeId:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerProfileManager;->mDisabledProfileId:I

    if-ne v1, v3, :cond_1

    .line 121
    :cond_0
    const-string/jumbo v1, "PowerProfileManager"

    const-string/jumbo v2, "error parsing profile config - disable or lowpower profile missing"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iput-boolean v4, p0, Lcom/android/server/power/PowerProfileManager;->mConfigured:Z

    .line 124
    const-string/jumbo v1, "power_profile_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    return-void

    .line 128
    :cond_1
    new-instance v1, Lcom/android/server/power/PowerProfileManager$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/power/PowerProfileManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerProfileManager$SettingsObserver;-><init>(Lcom/android/server/power/PowerProfileManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/power/PowerProfileManager;->mSettingsObserver:Lcom/android/server/power/PowerProfileManager$SettingsObserver;

    .line 130
    const-string/jumbo v1, "power_profile_enabled"

    .line 129
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 131
    iget-object v2, p0, Lcom/android/server/power/PowerProfileManager;->mSettingsObserver:Lcom/android/server/power/PowerProfileManager$SettingsObserver;

    .line 129
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 133
    const-string/jumbo v1, "power_profile_default"

    .line 132
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/android/server/power/PowerProfileManager;->mSettingsObserver:Lcom/android/server/power/PowerProfileManager$SettingsObserver;

    .line 132
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 136
    const-string/jumbo v1, "power_profile_screen_off"

    .line 135
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 137
    iget-object v2, p0, Lcom/android/server/power/PowerProfileManager;->mSettingsObserver:Lcom/android/server/power/PowerProfileManager$SettingsObserver;

    .line 135
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 139
    const-string/jumbo v1, "power_profile_apps"

    .line 138
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 140
    iget-object v2, p0, Lcom/android/server/power/PowerProfileManager;->mSettingsObserver:Lcom/android/server/power/PowerProfileManager$SettingsObserver;

    .line 138
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 142
    const-string/jumbo v1, "power_profile_plugged"

    .line 141
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 143
    iget-object v2, p0, Lcom/android/server/power/PowerProfileManager;->mSettingsObserver:Lcom/android/server/power/PowerProfileManager$SettingsObserver;

    .line 141
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 145
    iget v1, p0, Lcom/android/server/power/PowerProfileManager;->mDisabledProfileId:I

    iput v1, p0, Lcom/android/server/power/PowerProfileManager;->mDefaultProfileId:I

    .line 146
    iget v1, p0, Lcom/android/server/power/PowerProfileManager;->mDefaultProfileId:I

    iput v1, p0, Lcom/android/server/power/PowerProfileManager;->mScreenOffProfileId:I

    .line 147
    iput v3, p0, Lcom/android/server/power/PowerProfileManager;->mForceProfileId:I

    .line 148
    iget v1, p0, Lcom/android/server/power/PowerProfileManager;->mDefaultProfileId:I

    iput v1, p0, Lcom/android/server/power/PowerProfileManager;->mCurrentPowerProfileId:I

    .line 150
    const-string/jumbo v1, "power_profile_apps"

    .line 149
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerProfileManager;->updateSettings(Landroid/net/Uri;)V

    .line 151
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerProfileManager;->updateSettings(Landroid/net/Uri;)V

    .line 114
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    return-void
.end method

.method public setLowPowerMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/android/server/power/PowerProfileManager;->mLowPowerMode:Z

    .line 281
    iget-boolean v0, p0, Lcom/android/server/power/PowerProfileManager;->mLowPowerMode:Z

    if-eqz v0, :cond_1

    .line 282
    iget v0, p0, Lcom/android/server/power/PowerProfileManager;->mLowPowerModeId:I

    iput v0, p0, Lcom/android/server/power/PowerProfileManager;->mCurrentPowerProfileId:I

    .line 286
    :goto_0
    iget v0, p0, Lcom/android/server/power/PowerProfileManager;->mCurrentPowerProfileId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 287
    invoke-direct {p0}, Lcom/android/server/power/PowerProfileManager;->sendToHal()V

    .line 276
    :cond_0
    return-void

    .line 284
    :cond_1
    iget v0, p0, Lcom/android/server/power/PowerProfileManager;->mDefaultProfileId:I

    iput v0, p0, Lcom/android/server/power/PowerProfileManager;->mCurrentPowerProfileId:I

    goto :goto_0
.end method

.method public setPowerPlugged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/android/server/power/PowerProfileManager;->mEnabled:Z

    if-nez v0, :cond_0

    .line 293
    return-void

    .line 297
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/power/PowerProfileManager;->mPowerPlugged:Z

    .line 299
    iget-boolean v0, p0, Lcom/android/server/power/PowerProfileManager;->mPowerPlugged:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerProfileManager;->mPowerProfilePlugged:Z

    if-eqz v0, :cond_2

    .line 291
    :cond_1
    :goto_0
    return-void

    .line 300
    :cond_2
    iget v0, p0, Lcom/android/server/power/PowerProfileManager;->mDisabledProfileId:I

    iput v0, p0, Lcom/android/server/power/PowerProfileManager;->mCurrentPowerProfileId:I

    .line 301
    iget v0, p0, Lcom/android/server/power/PowerProfileManager;->mCurrentPowerProfileId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 302
    invoke-direct {p0}, Lcom/android/server/power/PowerProfileManager;->sendToHal()V

    goto :goto_0
.end method

.method public setPowerProfile(Ljava/lang/String;)V
    .locals 5
    .param p1, "profile"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 253
    iget-boolean v3, p0, Lcom/android/server/power/PowerProfileManager;->mEnabled:Z

    if-eqz v3, :cond_0

    .line 254
    iget-boolean v3, p0, Lcom/android/server/power/PowerProfileManager;->mLowPowerMode:Z

    .line 253
    if-eqz v3, :cond_1

    .line 255
    :cond_0
    return-void

    .line 257
    :cond_1
    iput v4, p0, Lcom/android/server/power/PowerProfileManager;->mForceProfileId:I

    .line 258
    iget-object v3, p0, Lcom/android/server/power/PowerProfileManager;->mProfilesIds:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 259
    .local v1, "nextId":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 260
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 261
    .local v0, "id":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/power/PowerProfileManager;->mProfilesIds:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerProfileManager$PowerProfile;

    iget-object v2, v3, Lcom/android/server/power/PowerProfileManager$PowerProfile;->mName:Ljava/lang/String;

    .line 262
    .local v2, "profileName":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 263
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerProfileManager;->mForceProfileId:I

    .line 267
    .end local v0    # "id":Ljava/lang/Integer;
    .end local v2    # "profileName":Ljava/lang/String;
    :cond_3
    iget v3, p0, Lcom/android/server/power/PowerProfileManager;->mForceProfileId:I

    if-eq v3, v4, :cond_5

    .line 268
    iget v3, p0, Lcom/android/server/power/PowerProfileManager;->mForceProfileId:I

    iput v3, p0, Lcom/android/server/power/PowerProfileManager;->mCurrentPowerProfileId:I

    .line 269
    iget v3, p0, Lcom/android/server/power/PowerProfileManager;->mCurrentPowerProfileId:I

    if-ne v3, v4, :cond_4

    .line 270
    return-void

    .line 272
    :cond_4
    invoke-direct {p0}, Lcom/android/server/power/PowerProfileManager;->sendToHal()V

    .line 252
    :cond_5
    return-void
.end method
