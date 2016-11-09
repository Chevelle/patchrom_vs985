.class Lcom/android/server/policy/GlobalActions$DndModeStateAction;
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
    name = "DndModeStateAction"
.end annotation


# instance fields
.field private final ITEM_IDS:[I

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mNoMan:Landroid/app/NotificationManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/app/NotificationManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "noMan"    # Landroid/app/NotificationManager;

    .prologue
    .line 1488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1482
    const v0, 0x1020332

    const v1, 0x1020333

    const v2, 0x1020334

    const v3, 0x1020335

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$DndModeStateAction;->ITEM_IDS:[I

    .line 1489
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$DndModeStateAction;->mHandler:Landroid/os/Handler;

    .line 1490
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$DndModeStateAction;->mContext:Landroid/content/Context;

    .line 1491
    iput-object p3, p0, Lcom/android/server/policy/GlobalActions$DndModeStateAction;->mNoMan:Landroid/app/NotificationManager;

    .line 1488
    return-void
.end method

.method private dndModeToIndex(I)I
    .locals 1
    .param p1, "dndMode"    # I

    .prologue
    const/4 v0, 0x3

    .line 1504
    packed-switch p1, :pswitch_data_0

    .line 1514
    return v0

    .line 1506
    :pswitch_0
    return v0

    .line 1508
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1510
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 1512
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 1504
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getZenModeSetting()I
    .locals 3

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$DndModeStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private indexToDndMode(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 1518
    packed-switch p1, :pswitch_data_0

    .line 1528
    return v0

    .line 1520
    :pswitch_0
    return v0

    .line 1522
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1524
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 1526
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 1518
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 1538
    const v4, 0x1090062

    invoke-virtual {p4, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1540
    .local v3, "v":Landroid/view/View;
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions$DndModeStateAction;->getZenModeSetting()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/policy/GlobalActions$DndModeStateAction;->dndModeToIndex(I)I

    move-result v2

    .line 1541
    .local v2, "selectedIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v0, v4, :cond_1

    .line 1542
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$DndModeStateAction;->ITEM_IDS:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1543
    .local v1, "itemView":Landroid/view/View;
    if-ne v2, v0, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1545
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1546
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1541
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    .line 1543
    goto :goto_1

    .line 1548
    .end local v1    # "itemView":Landroid/view/View;
    :cond_1
    return-object v3
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1533
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1572
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    .line 1584
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Integer;

    if-nez v5, :cond_0

    return-void

    .line 1586
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1587
    .local v4, "parent":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1588
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1589
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1590
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v9}, Landroid/view/View;->setSelected(Z)V

    .line 1588
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1593
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1594
    .local v3, "index":I
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1595
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$DndModeStateAction;->mNoMan:Landroid/app/NotificationManager;

    invoke-direct {p0, v3}, Lcom/android/server/policy/GlobalActions$DndModeStateAction;->indexToDndMode(I)I

    move-result v6

    const-string/jumbo v7, "GlobalActions"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 1596
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$DndModeStateAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1583
    return-void
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 1579
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1563
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1553
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringRestrictedKeyguard()Z
    .locals 1

    .prologue
    .line 1558
    const/4 v0, 0x1

    return v0
.end method

.method public showForCurrentUser()Z
    .locals 1

    .prologue
    .line 1568
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 1575
    return-void
.end method
