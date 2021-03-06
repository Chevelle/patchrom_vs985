.class Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$Action;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentModeTriStateAction"
.end annotation


# instance fields
.field private final ITEM_IDS:[I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioManager"    # Landroid/media/AudioManager;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1389
    const v0, 0x1020332

    const v1, 0x1020333

    const v2, 0x1020334

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    .line 1396
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    .line 1397
    iput-object p3, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    .line 1398
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    .line 1395
    return-void
.end method

.method private indexToRingerMode(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1408
    return p1
.end method

.method private ringerModeToIndex(I)I
    .locals 0
    .param p1, "ringerMode"    # I

    .prologue
    .line 1403
    return p1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v5, 0x0

    .line 1418
    const v4, 0x1090064

    invoke-virtual {p4, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1420
    .local v3, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->ringerModeToIndex(I)I

    move-result v2

    .line 1421
    .local v2, "selectedIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    .line 1422
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1423
    .local v1, "itemView":Landroid/view/View;
    if-ne v2, v0, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1425
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1426
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1421
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    .line 1423
    goto :goto_1

    .line 1428
    .end local v1    # "itemView":Landroid/view/View;
    :cond_1
    return-object v3
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1413
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1452
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 1464
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Integer;

    if-nez v5, :cond_0

    return-void

    .line 1466
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1467
    .local v4, "parent":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1468
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1469
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1470
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 1468
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1473
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1474
    .local v3, "index":I
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1475
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v3}, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->indexToRingerMode(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 1476
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1463
    return-void
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 1459
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1443
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1433
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringRestrictedKeyguard()Z
    .locals 1

    .prologue
    .line 1438
    const/4 v0, 0x1

    return v0
.end method

.method public showForCurrentUser()Z
    .locals 1

    .prologue
    .line 1448
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 1455
    return-void
.end method
