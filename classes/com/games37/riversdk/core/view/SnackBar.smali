.class public Lcom/games37/riversdk/core/view/SnackBar;
.super Lcom/games37/riversdk/core/view/BaseDialog;
.source "SnackBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/core/view/SnackBar$OnHideListener;
    }
.end annotation


# instance fields
.field dismissTimer:Ljava/lang/Thread;

.field handler:Landroid/os/Handler;

.field private mActivity:Landroid/app/Activity;

.field private mBackgroundSnackBar:I

.field private mContent:Ljava/lang/String;

.field private mIndeterminate:Z

.field private mOnHideListener:Lcom/games37/riversdk/core/view/SnackBar$OnHideListener;

.field private mTextSize:F

.field private mTimer:I

.field private rl_content:Landroid/widget/RelativeLayout;

.field private tv_content:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 40
    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lcom/games37/riversdk/core/view/SnackBar;->mTextSize:F

    .line 44
    const-string v0, "#333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/games37/riversdk/core/view/SnackBar;->mBackgroundSnackBar:I

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/games37/riversdk/core/view/SnackBar;->mIndeterminate:Z

    .line 56
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/games37/riversdk/core/view/SnackBar;->mTimer:I

    .line 118
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/games37/riversdk/core/view/SnackBar$1;

    invoke-direct {v1, p0}, Lcom/games37/riversdk/core/view/SnackBar$1;-><init>(Lcom/games37/riversdk/core/view/SnackBar;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/view/SnackBar;->dismissTimer:Ljava/lang/Thread;

    .line 131
    new-instance v0, Lcom/games37/riversdk/core/view/SnackBar$2;

    invoke-direct {v0, p0}, Lcom/games37/riversdk/core/view/SnackBar$2;-><init>(Lcom/games37/riversdk/core/view/SnackBar;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/view/SnackBar;->handler:Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Lcom/games37/riversdk/core/view/SnackBar;->mActivity:Landroid/app/Activity;

    .line 61
    iput-object p2, p0, Lcom/games37/riversdk/core/view/SnackBar;->mContent:Ljava/lang/String;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/core/view/SnackBar;)I
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/SnackBar;

    .prologue
    .line 25
    iget v0, p0, Lcom/games37/riversdk/core/view/SnackBar;->mTimer:I

    return v0
.end method

.method static synthetic access$100(Lcom/games37/riversdk/core/view/SnackBar;)Lcom/games37/riversdk/core/view/SnackBar$OnHideListener;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/SnackBar;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/games37/riversdk/core/view/SnackBar;->mOnHideListener:Lcom/games37/riversdk/core/view/SnackBar$OnHideListener;

    return-object v0
.end method

.method static synthetic access$201(Lcom/games37/riversdk/core/view/SnackBar;)V
    .registers 1
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/SnackBar;

    .prologue
    .line 25
    invoke-super {p0}, Lcom/games37/riversdk/core/view/BaseDialog;->dismiss()V

    return-void
.end method

.method private initView()V
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/games37/riversdk/core/view/SnackBar;->mActivity:Landroid/app/Activity;

    const-string v1, "rl_snackbar"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/view/SnackBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/games37/riversdk/core/view/SnackBar;->rl_content:Landroid/widget/RelativeLayout;

    .line 88
    iget-object v0, p0, Lcom/games37/riversdk/core/view/SnackBar;->mActivity:Landroid/app/Activity;

    const-string v1, "tv_content"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/view/SnackBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/games37/riversdk/core/view/SnackBar;->tv_content:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/games37/riversdk/core/view/SnackBar;->tv_content:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/games37/riversdk/core/view/SnackBar;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method private invokeAnim(Z)V
    .registers 11
    .param p1, "isShow"    # Z

    .prologue
    .line 152
    if-nez p1, :cond_27

    .line 153
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, -0x40800000    # -1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 162
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    :goto_10
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 163
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 165
    new-instance v1, Lcom/games37/riversdk/core/view/SnackBar$3;

    invoke-direct {v1, p0, p1}, Lcom/games37/riversdk/core/view/SnackBar$3;-><init>(Lcom/games37/riversdk/core/view/SnackBar;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 182
    iget-object v1, p0, Lcom/games37/riversdk/core/view/SnackBar;->rl_content:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 183
    return-void

    .line 158
    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    :cond_27
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    goto :goto_10
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/games37/riversdk/core/view/SnackBar;->rl_content:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_8

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/games37/riversdk/core/view/SnackBar;->invokeAnim(Z)V

    .line 147
    :cond_8
    return-void
.end method

.method public getDismissTimer()I
    .registers 2

    .prologue
    .line 206
    iget v0, p0, Lcom/games37/riversdk/core/view/SnackBar;->mTimer:I

    return v0
.end method

.method public isIndeterminate()Z
    .registers 2

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/games37/riversdk/core/view/SnackBar;->mIndeterminate:Z

    return v0
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 100
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/games37/riversdk/core/view/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/games37/riversdk/core/view/SnackBar;->requestWindowFeature(I)Z

    .line 69
    iget-object v2, p0, Lcom/games37/riversdk/core/view/SnackBar;->mActivity:Landroid/app/Activity;

    const-string v3, "r1_baseview_snackbar_layout"

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/games37/riversdk/core/view/SnackBar;->setContentView(I)V

    .line 71
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/games37/riversdk/core/view/SnackBar;->setCanceledOnTouchOutside(Z)V

    .line 72
    invoke-direct {p0}, Lcom/games37/riversdk/core/view/SnackBar;->initView()V

    .line 74
    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/SnackBar;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 75
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 77
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x31

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 78
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 79
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/games37/riversdk/core/view/SnackBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBackgroundSnackBar(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 215
    iput p1, p0, Lcom/games37/riversdk/core/view/SnackBar;->mBackgroundSnackBar:I

    .line 216
    iget-object v0, p0, Lcom/games37/riversdk/core/view/SnackBar;->rl_content:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_b

    .line 217
    iget-object v0, p0, Lcom/games37/riversdk/core/view/SnackBar;->rl_content:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 219
    :cond_b
    return-void
.end method

.method public setDismissTimer(I)V
    .registers 2
    .param p1, "time"    # I

    .prologue
    .line 202
    iput p1, p0, Lcom/games37/riversdk/core/view/SnackBar;->mTimer:I

    .line 203
    return-void
.end method

.method public setIndeterminate(Z)V
    .registers 2
    .param p1, "indeterminate"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/games37/riversdk/core/view/SnackBar;->mIndeterminate:Z

    .line 195
    return-void
.end method

.method public setMessageTextSize(F)V
    .registers 4
    .param p1, "size"    # F

    .prologue
    .line 187
    iput p1, p0, Lcom/games37/riversdk/core/view/SnackBar;->mTextSize:F

    .line 188
    iget-object v0, p0, Lcom/games37/riversdk/core/view/SnackBar;->tv_content:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 189
    iget-object v0, p0, Lcom/games37/riversdk/core/view/SnackBar;->tv_content:Landroid/widget/TextView;

    iget v1, p0, Lcom/games37/riversdk/core/view/SnackBar;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 191
    :cond_d
    return-void
.end method

.method public setOnhideListener(Lcom/games37/riversdk/core/view/SnackBar$OnHideListener;)V
    .registers 2
    .param p1, "onHideListener"    # Lcom/games37/riversdk/core/view/SnackBar$OnHideListener;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/games37/riversdk/core/view/SnackBar;->mOnHideListener:Lcom/games37/riversdk/core/view/SnackBar$OnHideListener;

    .line 232
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/games37/riversdk/core/view/BaseDialog;->show()V

    .line 106
    iget-object v0, p0, Lcom/games37/riversdk/core/view/SnackBar;->rl_content:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_b

    .line 107
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/games37/riversdk/core/view/SnackBar;->invokeAnim(Z)V

    .line 110
    :cond_b
    iget-boolean v0, p0, Lcom/games37/riversdk/core/view/SnackBar;->mIndeterminate:Z

    if-nez v0, :cond_14

    .line 111
    iget-object v0, p0, Lcom/games37/riversdk/core/view/SnackBar;->dismissTimer:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    :cond_14
    return-void
.end method
