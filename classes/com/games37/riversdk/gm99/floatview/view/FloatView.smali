.class public Lcom/games37/riversdk/gm99/floatview/view/FloatView;
.super Landroid/widget/FrameLayout;
.source "FloatView.java"

# interfaces
.implements Lcom/games37/riversdk/core/floatview/viewsizewatcher/OnViewSizeChangedListener;
.implements Lcom/games37/riversdk/gm99/floatview/listener/OnMenuStateChangeListener;
.implements Lcom/games37/riversdk/gm99/floatview/listener/OnMenuItemClickListener;


# static fields
.field private static final LONG_TIME:I = 0x2710

.field private static final MOVE_DISTANCE:I = 0x14

.field public static RADIUS:F = 0.0f

.field public static final TAG:Ljava/lang/String;

.field private static final TIME:I = 0x1388

.field private static final UP_DISTANCE:I = 0xa

.field private static handler:Landroid/os/Handler;


# instance fields
.field protected clingBoundaryRunnable:Ljava/lang/Runnable;

.field private mActivity:Landroid/app/Activity;

.field private mActivityContentView:Landroid/view/ViewGroup;

.field private mFloatLogo:Lcom/games37/riversdk/core/floatview/view/FloatLogo;

.field private mFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

.field private mHiddenBar:Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;

.field private mIsCling:Z

.field private mIsMove:Z

.field private mIsShowMenu:Z

.field private mIsShowing:Z

.field private mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

.field private mMoveEndY:I

.field private mMoveStartY:I

.field private mNowX:F

.field private mNowY:F

.field private mPosition:I

.field private mPreScreenWidth:I

.field private mPresenter:Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

.field private mScreenHeigh:I

.field private mScreenWidth:I

.field private mTouchStartX:F

.field private mTouchStartY:F

.field private mWMHiddenBarParams:Landroid/view/WindowManager$LayoutParams;

.field private mWMMenuViewParams:Landroid/view/WindowManager$LayoutParams;

.field private mWatcher:Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;

.field private mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->TAG:Ljava/lang/String;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->handler:Landroid/os/Handler;

    .line 162
    const/high16 v0, 0x42c80000    # 100.0f

    sput v0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->RADIUS:F

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 165
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 111
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mTouchStartX:F

    .line 117
    iput v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMoveStartY:I

    .line 118
    iput v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMoveEndY:I

    .line 123
    iput-boolean v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsMove:Z

    .line 127
    iput-boolean v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsCling:Z

    .line 132
    iput-boolean v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsShowMenu:Z

    .line 137
    iput-boolean v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsShowing:Z

    .line 149
    iput v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPreScreenWidth:I

    .line 153
    const/4 v0, 0x1

    iput v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPosition:I

    .line 542
    new-instance v0, Lcom/games37/riversdk/gm99/floatview/view/FloatView$1;

    invoke-direct {v0, p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView$1;-><init>(Lcom/games37/riversdk/gm99/floatview/view/FloatView;)V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->clingBoundaryRunnable:Ljava/lang/Runnable;

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "functionInfo"    # Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 169
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 111
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mTouchStartX:F

    .line 117
    iput v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMoveStartY:I

    .line 118
    iput v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMoveEndY:I

    .line 123
    iput-boolean v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsMove:Z

    .line 127
    iput-boolean v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsCling:Z

    .line 132
    iput-boolean v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsShowMenu:Z

    .line 137
    iput-boolean v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsShowing:Z

    .line 149
    iput v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPreScreenWidth:I

    .line 153
    iput v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPosition:I

    .line 542
    new-instance v0, Lcom/games37/riversdk/gm99/floatview/view/FloatView$1;

    invoke-direct {v0, p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView$1;-><init>(Lcom/games37/riversdk/gm99/floatview/view/FloatView;)V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->clingBoundaryRunnable:Ljava/lang/Runnable;

    .line 170
    sget-object v1, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FloatView functionInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_62

    const-string v0, "null"

    :goto_3a
    invoke-static {v1, v0}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mActivity:Landroid/app/Activity;

    .line 172
    iput-object p2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    .line 174
    const/high16 v0, 0x42dc0000    # 110.0f

    .line 175
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 174
    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->RADIUS:F

    .line 176
    new-instance v0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

    invoke-direct {v0}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPresenter:Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

    .line 178
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->initView()V

    .line 180
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->getSreenSize()V

    .line 182
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->addView2WindowManager()V

    .line 183
    return-void

    .line 170
    :cond_62
    invoke-virtual {p2}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a
.end method

.method static synthetic access$000(Lcom/games37/riversdk/gm99/floatview/view/FloatView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsShowMenu:Z

    return v0
.end method

.method static synthetic access$002(Lcom/games37/riversdk/gm99/floatview/view/FloatView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/floatview/view/FloatView;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsShowMenu:Z

    return p1
.end method

.method static synthetic access$100(Lcom/games37/riversdk/gm99/floatview/view/FloatView;)Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    return-object v0
.end method

.method static synthetic access$200(Lcom/games37/riversdk/gm99/floatview/view/FloatView;)V
    .registers 1
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->suspendClingBoundary()V

    return-void
.end method

.method static synthetic access$300(Lcom/games37/riversdk/gm99/floatview/view/FloatView;)Landroid/view/WindowManager$LayoutParams;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$400(Lcom/games37/riversdk/gm99/floatview/view/FloatView;)Lcom/games37/riversdk/core/floatview/SDKWindowManager;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    return-object v0
.end method

.method private disposeWatcher()V
    .registers 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWatcher:Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;

    if-eqz v0, :cond_c

    .line 729
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWatcher:Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->dispose()V

    .line 730
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWatcher:Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;

    .line 732
    :cond_c
    return-void
.end method

.method private getSreenSize()V
    .registers 6

    .prologue
    .line 198
    :try_start_0
    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 199
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mActivityContentView:Landroid/view/ViewGroup;

    .line 201
    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mActivityContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenWidth:I

    .line 202
    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mActivityContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenHeigh:I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_2a

    .line 209
    :goto_25
    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenWidth:I

    iput v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPreScreenWidth:I

    .line 210
    return-void

    .line 203
    :catch_2a
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSreenSize error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/games37/riversdk/common/utils/DisPlayUtil;->getRealScreenSize(Landroid/content/Context;)[I

    move-result-object v1

    .line 206
    .local v1, "screenSizes":[I
    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenWidth:I

    .line 207
    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenHeigh:I

    goto :goto_25
.end method

.method private hideBar()V
    .registers 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mHiddenBar:Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;

    if-eqz v0, :cond_b

    .line 285
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mHiddenBar:Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;->setVisibility(I)V

    .line 287
    :cond_b
    return-void
.end method

.method private initHiddenBar()V
    .registers 4

    .prologue
    .line 237
    new-instance v0, Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mHiddenBar:Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;

    .line 238
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->getLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWMHiddenBarParams:Landroid/view/WindowManager$LayoutParams;

    .line 241
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mHiddenBar:Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;

    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWMHiddenBarParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 242
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mHiddenBar:Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;->setVisibility(I)V

    .line 243
    return-void
.end method

.method private initLogo()V
    .registers 4

    .prologue
    .line 293
    new-instance v0, Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;

    invoke-direct {v0}, Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;-><init>()V

    .line 295
    .local v0, "logoBuilder":Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;
    const-string v1, "a1_sdk_floatview_logo"

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;->setLogoResName(Ljava/lang/String;)Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;

    move-result-object v1

    const/16 v2, 0x32

    .line 297
    invoke-virtual {v1, v2}, Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;->setLogoParams(I)Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;

    move-result-object v1

    const-string v2, "a1_sdk_floatview_logo_hide_left"

    .line 299
    invoke-virtual {v1, v2}, Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;->setHideLeftLogoResName(Ljava/lang/String;)Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;

    move-result-object v1

    const-string v2, "a1_sdk_floatview_logo_hide_right"

    .line 301
    invoke-virtual {v1, v2}, Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;->setHideRightLogoResName(Ljava/lang/String;)Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;

    move-result-object v1

    const-string v2, "a1_sdk_floatview_redpoint"

    .line 303
    invoke-virtual {v1, v2}, Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;->setRedPointPicResName(Ljava/lang/String;)Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;

    move-result-object v1

    const/4 v2, 0x5

    .line 305
    invoke-virtual {v1, v2}, Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;->setRedPointMargin(I)Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;

    move-result-object v1

    const/4 v2, 0x7

    .line 307
    invoke-virtual {v1, v2}, Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;->setRedPointParams(I)Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    .line 309
    invoke-virtual {v2}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->getSdk_icon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;->setLogoImgUrl(Ljava/lang/String;)Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mActivity:Landroid/app/Activity;

    .line 310
    invoke-virtual {v1, v2}, Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;->build(Landroid/content/Context;)Lcom/games37/riversdk/core/floatview/view/FloatLogo;

    move-result-object v1

    iput-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFloatLogo:Lcom/games37/riversdk/core/floatview/view/FloatLogo;

    .line 311
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFloatLogo:Lcom/games37/riversdk/core/floatview/view/FloatLogo;

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->addView(Landroid/view/View;)V

    .line 312
    return-void
.end method

.method private initMenu()V
    .registers 4

    .prologue
    .line 318
    new-instance v0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->RADIUS:F

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    .line 320
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->initMenuData()V

    .line 322
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->setOnMenuItemClickListener(Lcom/games37/riversdk/gm99/floatview/listener/OnMenuItemClickListener;)V

    .line 324
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->setMenuStateChangeListener(Lcom/games37/riversdk/gm99/floatview/listener/OnMenuStateChangeListener;)V

    .line 325
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->setVisibility(I)V

    .line 326
    return-void
.end method

.method private initMenuData()V
    .registers 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->getMenuItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_18

    .line 333
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    invoke-virtual {v1}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->getFunction_lists()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->addMenuItem(Ljava/util/List;)V

    .line 335
    :cond_18
    return-void
.end method

.method private initView()V
    .registers 2

    .prologue
    .line 189
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->setVisibility(I)V

    .line 190
    return-void
.end method

.method private initWatcher()V
    .registers 3

    .prologue
    .line 717
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWatcher:Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mActivityContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1b

    .line 718
    new-instance v0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mActivityContentView:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWatcher:Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;

    .line 719
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWatcher:Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->setOnViewSizeChangedListener(Lcom/games37/riversdk/core/floatview/viewsizewatcher/OnViewSizeChangedListener;)V

    .line 720
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWatcher:Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->setup()V

    .line 722
    :cond_1b
    return-void
.end method

.method private isHideLogo()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 251
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mHiddenBar:Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;

    invoke-virtual {v3}, Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;->getHiddenAreaWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_44

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mHiddenBar:Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;

    .line 252
    invoke-virtual {v3}, Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;->getHiddenAreaWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_44

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ltz v1, :cond_44

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mHiddenBar:Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;

    .line 254
    invoke-virtual {v2}, Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;->getHiddenAreaHeight()I

    move-result v2

    if-gt v1, v2, :cond_44

    .line 255
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->hide()V

    .line 256
    invoke-static {}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getInstance()Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->setCloseUntilNextOpen(Z)V

    .line 259
    :goto_43
    return v0

    :cond_44
    const/4 v0, 0x0

    goto :goto_43
.end method

.method private isOpenMenu()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 496
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFloatLogo:Lcom/games37/riversdk/core/floatview/view/FloatLogo;

    invoke-virtual {v4}, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->getParams()Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->getLogoParams()I

    move-result v4

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/DisPlayUtil;->toDp(Landroid/content/Context;I)I

    move-result v0

    .line 498
    .local v0, "logoParams":I
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v4, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    invoke-virtual {v4}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_36

    .line 500
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v4, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    invoke-virtual {v4}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {p0, v3, v4, v2}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->moveLogo(IIZ)V

    .line 508
    :goto_35
    return v1

    .line 503
    :cond_36
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v4, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenHeigh:I

    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    invoke-virtual {v5}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_60

    .line 505
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v4, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenHeigh:I

    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    invoke-virtual {v5}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {p0, v3, v4, v2}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->moveLogo(IIZ)V

    goto :goto_35

    :cond_60
    move v1, v2

    .line 508
    goto :goto_35
.end method

.method private judgeLogoPosition()V
    .registers 3

    .prologue
    .line 586
    iget v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-le v0, v1, :cond_e

    .line 587
    const/4 v0, 0x1

    iput v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPosition:I

    .line 591
    :goto_d
    return-void

    .line 589
    :cond_e
    const/4 v0, 0x2

    iput v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPosition:I

    goto :goto_d
.end method

.method private setLogoRedPointState()V
    .registers 3

    .prologue
    .line 670
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPresenter:Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPresenter:Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;->getLogoRedPointState(Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 672
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFloatLogo:Lcom/games37/riversdk/core/floatview/view/FloatLogo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->setRedPointState(Z)V

    .line 676
    :goto_14
    return-void

    .line 674
    :cond_15
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFloatLogo:Lcom/games37/riversdk/core/floatview/view/FloatLogo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->setRedPointState(Z)V

    goto :goto_14
.end method

.method private showBar()V
    .registers 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mHiddenBar:Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;

    if-eqz v0, :cond_47

    .line 267
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mHiddenBar:Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mHiddenBar:Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;

    invoke-virtual {v2}, Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;->getHiddenAreaWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_48

    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mHiddenBar:Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;

    .line 270
    invoke-virtual {v2}, Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;->getHiddenAreaWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_48

    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ltz v0, :cond_48

    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mHiddenBar:Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;

    .line 272
    invoke-virtual {v1}, Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;->getHiddenAreaHeight()I

    move-result v1

    if-gt v0, v1, :cond_48

    .line 273
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mHiddenBar:Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;->showBackground()V

    .line 278
    :cond_47
    :goto_47
    return-void

    .line 275
    :cond_48
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mHiddenBar:Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;->hideBackground()V

    goto :goto_47
.end method

.method private suspendClingBoundary()V
    .registers 4

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 558
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->show()V

    .line 559
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFloatLogo:Lcom/games37/riversdk/core/floatview/view/FloatLogo;

    if-eqz v0, :cond_19

    .line 560
    iget v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPosition:I

    if-ne v0, v2, :cond_27

    .line 562
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFloatLogo:Lcom/games37/riversdk/core/floatview/view/FloatLogo;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->setState(I)V

    .line 567
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFloatLogo:Lcom/games37/riversdk/core/floatview/view/FloatLogo;

    iget v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->refresh(I)V

    .line 569
    :cond_19
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    if-eqz v0, :cond_24

    .line 570
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p0, v1}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->updateLayout(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 572
    :cond_24
    iput-boolean v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsCling:Z

    .line 573
    return-void

    .line 563
    :cond_27
    iget v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPosition:I

    if-ne v0, v1, :cond_12

    .line 565
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFloatLogo:Lcom/games37/riversdk/core/floatview/view/FloatLogo;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->setState(I)V

    goto :goto_12
.end method

.method private timerAgain()V
    .registers 5

    .prologue
    .line 529
    sget-object v0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_18

    .line 530
    sget-object v0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->clingBoundaryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 531
    iget-boolean v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsShowMenu:Z

    if-eqz v0, :cond_19

    .line 532
    sget-object v0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->clingBoundaryRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 537
    :cond_18
    :goto_18
    return-void

    .line 534
    :cond_19
    sget-object v0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->clingBoundaryRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_18
.end method

.method private updateMenuPosition()V
    .registers 5

    .prologue
    .line 476
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFloatLogo:Lcom/games37/riversdk/core/floatview/view/FloatLogo;

    invoke-virtual {v2}, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->getParams()Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->getLogoParams()I

    move-result v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/DisPlayUtil;->toDp(Landroid/content/Context;I)I

    move-result v0

    .line 477
    .local v0, "logoParams":I
    iget v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPosition:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3f

    .line 478
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->updatePosition(I)V

    .line 479
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWMMenuViewParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    invoke-virtual {v3}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 480
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWMMenuViewParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 481
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWMMenuViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2, v3}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->updateLayout(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 488
    :goto_3e
    return-void

    .line 483
    :cond_3f
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->updatePosition(I)V

    .line 484
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWMMenuViewParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    invoke-virtual {v3}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 485
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWMMenuViewParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenWidth:I

    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    invoke-virtual {v3}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 486
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWMMenuViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2, v3}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->updateLayout(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_3e
.end method

.method private updateViewPosition()V
    .registers 4

    .prologue
    .line 445
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mNowX:F

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mTouchStartX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 446
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mNowY:F

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mTouchStartY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 448
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->viewMoveRestrict()V

    .line 449
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p0, v1}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->updateLayout(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 450
    return-void
.end method

.method private viewMoveRestrict()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 457
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFloatLogo:Lcom/games37/riversdk/core/floatview/view/FloatLogo;

    invoke-virtual {v2}, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->getParams()Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->getLogoParams()I

    move-result v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/DisPlayUtil;->toDp(Landroid/content/Context;I)I

    move-result v0

    .line 459
    .local v0, "logoParams":I
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenWidth:I

    sub-int/2addr v2, v0

    if-le v1, v2, :cond_32

    .line 460
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenWidth:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 464
    :cond_21
    :goto_21
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenHeigh:I

    sub-int/2addr v2, v0

    if-lt v1, v2, :cond_3d

    .line 466
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenHeigh:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 470
    :cond_31
    :goto_31
    return-void

    .line 461
    :cond_32
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gtz v1, :cond_21

    .line 462
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_21

    .line 467
    :cond_3d
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-gtz v1, :cond_31

    .line 468
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_31
.end method


# virtual methods
.method public addView2WindowManager()V
    .registers 4

    .prologue
    const/4 v2, -0x2

    .line 216
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->getInstance(Landroid/content/Context;)Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    .line 218
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->initHiddenBar()V

    .line 220
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->initLogo()V

    .line 221
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    invoke-virtual {v0, v2, v2}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->getLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 224
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p0, v1}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 226
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->initMenu()V

    .line 227
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    invoke-virtual {v0, v2, v2}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->getLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWMMenuViewParams:Landroid/view/WindowManager$LayoutParams;

    .line 229
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWMMenuViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 230
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->initMenuData()V

    .line 231
    return-void
.end method

.method public changeMenuState()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 407
    iget-boolean v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsCling:Z

    if-eqz v0, :cond_e

    .line 408
    iput-boolean v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsCling:Z

    .line 409
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFloatLogo:Lcom/games37/riversdk/core/floatview/view/FloatLogo;

    invoke-virtual {v0, v2}, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->setState(I)V

    .line 439
    :cond_d
    :goto_d
    return-void

    .line 414
    :cond_e
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->isOpenMenu()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 419
    iget-boolean v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsShowMenu:Z

    if-eqz v0, :cond_2d

    .line 420
    iput-boolean v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsShowMenu:Z

    .line 422
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->hide()V

    .line 424
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPresenter:Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mActivity:Landroid/app/Activity;

    const-string v2, "1"

    const-string v3, "\u9690\u85cf\u6d6e\u5c42"

    const-string v4, "hide_window"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;->statisticClick(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 429
    :cond_2d
    iput-boolean v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsShowMenu:Z

    .line 431
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->updateMenuPosition()V

    .line 433
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->show()V

    .line 435
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPresenter:Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mActivity:Landroid/app/Activity;

    const-string v2, "1"

    const-string v3, "\u663e\u793a\u6d6e\u5c42"

    const-string v4, "open_window"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;->statisticClick(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public destory()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 852
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    if-eqz v0, :cond_12

    .line 853
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->removeView(Landroid/view/View;)V

    .line 854
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->removeView(Landroid/view/View;)V

    .line 857
    :cond_12
    iput-boolean v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsMove:Z

    .line 859
    iput-boolean v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsCling:Z

    .line 861
    iput-boolean v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsShowMenu:Z

    .line 863
    iput-boolean v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsShowing:Z

    .line 864
    iput-object v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFloatLogo:Lcom/games37/riversdk/core/floatview/view/FloatLogo;

    .line 865
    iput-object v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    .line 866
    iput-object v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    .line 868
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->removeRunnable()V

    .line 869
    return-void
.end method

.method public hide()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 682
    sget-object v0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->TAG:Ljava/lang/String;

    const-string v1, "----------------hide-----------------"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->hideBar()V

    .line 686
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->removeRunnable()V

    .line 688
    iput-boolean v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsShowMenu:Z

    .line 690
    iput-boolean v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsMove:Z

    .line 692
    invoke-virtual {p0, v3}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->setVisibility(I)V

    .line 694
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFloatLogo:Lcom/games37/riversdk/core/floatview/view/FloatLogo;

    if-eqz v0, :cond_20

    .line 695
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFloatLogo:Lcom/games37/riversdk/core/floatview/view/FloatLogo;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->hide()V

    .line 698
    :cond_20
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    if-eqz v0, :cond_29

    .line 699
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    invoke-virtual {v0, v3}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->setVisibility(I)V

    .line 702
    :cond_29
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->disposeWatcher()V

    .line 703
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 706
    iget-boolean v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsShowing:Z

    return v0
.end method

.method public moveLogo(IIZ)V
    .registers 8
    .param p1, "startY"    # I
    .param p2, "endY"    # I
    .param p3, "isOpenMenu"    # Z

    .prologue
    .line 825
    iput p1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMoveStartY:I

    .line 826
    iput p2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMoveEndY:I

    .line 827
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 828
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/games37/riversdk/gm99/floatview/view/FloatView$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/games37/riversdk/gm99/floatview/view/FloatView$2;-><init>(Lcom/games37/riversdk/gm99/floatview/view/FloatView;IZ)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 842
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 843
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 844
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 845
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x2

    .line 595
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 596
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->show()V

    .line 597
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->removeRunnable()V

    .line 598
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->getSreenSize()V

    .line 599
    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 600
    .local v0, "oldX":I
    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 601
    .local v1, "oldY":I
    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenHeigh:I

    if-le v1, v2, :cond_1b

    .line 602
    iget v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenHeigh:I

    .line 604
    :cond_1b
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v2, :pswitch_data_6c

    .line 628
    :goto_20
    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, p0, v3}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->updateLayout(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 629
    sget-object v2, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->clingBoundaryRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 630
    return-void

    .line 607
    :pswitch_31
    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPosition:I

    if-ne v2, v3, :cond_45

    .line 608
    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenWidth:I

    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 609
    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_20

    .line 611
    :cond_45
    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 612
    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_20

    .line 617
    :pswitch_4e
    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPosition:I

    if-ne v2, v3, :cond_62

    .line 618
    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenWidth:I

    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 619
    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_20

    .line 621
    :cond_62
    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 622
    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_20

    .line 604
    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_31
    .end packed-switch
.end method

.method public onMenuHide()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 807
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->show()V

    .line 809
    iget v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMoveStartY:I

    if-eq v0, v3, :cond_18

    iget v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMoveEndY:I

    if-eq v0, v3, :cond_18

    .line 810
    iget v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMoveEndY:I

    iget v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMoveStartY:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->moveLogo(IIZ)V

    .line 812
    iput v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMoveStartY:I

    .line 813
    iput v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMoveEndY:I

    .line 815
    :cond_18
    return-void
.end method

.method public onMenuItemClick(Ljava/lang/String;Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;)V
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "menuFunctionInfo"    # Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;

    .prologue
    .line 774
    const-string v1, "CLOSE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 776
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->changeMenuState()V

    .line 787
    :cond_b
    :goto_b
    return-void

    .line 778
    :cond_c
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPresenter:Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

    if-eqz v1, :cond_b

    .line 780
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPresenter:Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    invoke-virtual {v1, v2, v3, p2}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;->onClick(Landroid/app/Activity;Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;)Z

    move-result v0

    .line 781
    .local v0, "isPass":Z
    if-eqz v0, :cond_b

    .line 783
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    invoke-virtual {v1, p2}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->setRedPointState(Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;)V

    goto :goto_b
.end method

.method public onMenushow()V
    .registers 2

    .prologue
    .line 793
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->hideBar()V

    .line 795
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->removeRunnable()V

    .line 797
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsShowMenu:Z

    .line 799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsMove:Z

    .line 801
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->setVisibility(I)V

    .line 802
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v5, -0x3e600000    # -20.0f

    const/high16 v4, -0x3ee00000    # -10.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mNowX:F

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/games37/riversdk/common/utils/DisPlayUtil;->getStatusHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mNowY:F

    .line 341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_d0

    .line 398
    :cond_23
    :goto_23
    return v3

    .line 344
    :pswitch_24
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->removeRunnable()V

    .line 345
    iput-boolean v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsMove:Z

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mTouchStartX:F

    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mTouchStartY:F

    goto :goto_23

    .line 351
    :pswitch_36
    iget v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mTouchStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_66

    iget v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mTouchStartY:F

    .line 352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    cmpg-float v0, v0, v5

    if-ltz v0, :cond_66

    iget v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mTouchStartX:F

    .line 353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_66

    iget v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mTouchStartX:F

    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpg-float v0, v0, v5

    if-gez v0, :cond_23

    .line 355
    :cond_66
    const/4 v0, -0x1

    iput v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMoveStartY:I

    .line 356
    const/4 v0, -0x1

    iput v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMoveEndY:I

    .line 359
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->showBar()V

    .line 361
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFloatLogo:Lcom/games37/riversdk/core/floatview/view/FloatLogo;

    invoke-virtual {v0, v3}, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->setState(I)V

    .line 362
    iput-boolean v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsMove:Z

    .line 363
    iget-boolean v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsShowMenu:Z

    if-eqz v0, :cond_83

    .line 364
    iput-boolean v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsShowMenu:Z

    .line 366
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->setVisibility(I)V

    .line 369
    :cond_83
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->updateViewPosition()V

    goto :goto_23

    .line 375
    :pswitch_87
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->judgeLogoPosition()V

    .line 376
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->isHideLogo()Z

    move-result v0

    if-nez v0, :cond_23

    .line 380
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->suspendMoveEnd()V

    .line 382
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->hideBar()V

    .line 383
    iput-boolean v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsMove:Z

    .line 385
    iget v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mTouchStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v6

    if-gez v0, :cond_c4

    iget v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mTouchStartY:F

    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    cmpg-float v0, v0, v4

    if-lez v0, :cond_c4

    iget v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mTouchStartX:F

    .line 387
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v6

    if-gez v0, :cond_c4

    iget v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mTouchStartX:F

    .line 388
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_cb

    .line 389
    :cond_c4
    const/4 v0, 0x0

    iput v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mTouchStartY:F

    iput v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mTouchStartX:F

    goto/16 :goto_23

    .line 392
    :cond_cb
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->changeMenuState()V

    goto/16 :goto_23

    .line 341
    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_24
        :pswitch_87
        :pswitch_36
        :pswitch_87
    .end packed-switch
.end method

.method public onViewSizeChanged(Landroid/view/View;II)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 737
    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/games37/riversdk/common/utils/DisPlayUtil;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v1

    .line 739
    .local v1, "screenSizes":[I
    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/games37/riversdk/common/utils/DisPlayUtil;->getRealScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    .line 742
    .local v0, "realScreenSizes":[I
    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPreScreenWidth:I

    if-eq v2, p2, :cond_17

    aget v2, v1, v4

    aget v3, v0, v4

    if-ne v2, v3, :cond_18

    .line 770
    :cond_17
    :goto_17
    return-void

    .line 746
    :cond_18
    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPreScreenWidth:I

    if-ge p2, v2, :cond_48

    .line 747
    aget v2, v1, v4

    iput v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenWidth:I

    .line 752
    :goto_20
    iget-boolean v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsShowing:Z

    if-eqz v2, :cond_17

    .line 756
    iget-boolean v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsShowing:Z

    if-eqz v2, :cond_42

    .line 757
    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4d

    .line 759
    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWMMenuViewParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 760
    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWMMenuViewParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 766
    :cond_39
    :goto_39
    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    iget-object v4, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWMMenuViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v3, v4}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->updateLayout(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 768
    :cond_42
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->suspendMoveEnd()V

    .line 769
    iput p2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPreScreenWidth:I

    goto :goto_17

    .line 749
    :cond_48
    aget v2, v0, v4

    iput v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenWidth:I

    goto :goto_20

    .line 761
    :cond_4d
    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mPosition:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_39

    .line 763
    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWMMenuViewParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 764
    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWMMenuViewParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenWidth:I

    iget-object v4, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    invoke-virtual {v4}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_39
.end method

.method public removeRunnable()V
    .registers 3

    .prologue
    .line 579
    sget-object v0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->clingBoundaryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 580
    return-void
.end method

.method public setShowing(Z)V
    .registers 2
    .param p1, "showing"    # Z

    .prologue
    .line 710
    iput-boolean p1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsShowing:Z

    .line 711
    return-void
.end method

.method public show()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 636
    sget-object v0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->TAG:Ljava/lang/String;

    const-string v1, "----------------show-----------------"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->removeRunnable()V

    .line 640
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    if-eqz v0, :cond_17

    .line 641
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->setVisibility(I)V

    .line 643
    :cond_17
    invoke-virtual {p0, v5}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFloatLogo:Lcom/games37/riversdk/core/floatview/view/FloatLogo;

    if-eqz v0, :cond_2c

    .line 647
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->setLogoRedPointState()V

    .line 648
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFloatLogo:Lcom/games37/riversdk/core/floatview/view/FloatLogo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->setState(I)V

    .line 649
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFloatLogo:Lcom/games37/riversdk/core/floatview/view/FloatLogo;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->show()V

    .line 653
    :cond_2c
    sget-object v0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->clingBoundaryRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 655
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->initWatcher()V

    .line 658
    iget v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMoveStartY:I

    if-eq v0, v4, :cond_4b

    iget v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMoveEndY:I

    if-eq v0, v4, :cond_4b

    .line 659
    iget v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMoveEndY:I

    iget v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMoveStartY:I

    invoke-virtual {p0, v0, v1, v5}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->moveLogo(IIZ)V

    .line 661
    iput v4, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMoveStartY:I

    .line 662
    iput v4, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMoveEndY:I

    .line 664
    :cond_4b
    return-void
.end method

.method public suspendMoveEnd()V
    .registers 4

    .prologue
    .line 515
    iget v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-le v1, v2, :cond_1a

    .line 516
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 521
    :goto_f
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, p0, v2}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->updateLayout(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 522
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->timerAgain()V

    .line 523
    return-void

    .line 518
    :cond_1a
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mFloatLogo:Lcom/games37/riversdk/core/floatview/view/FloatLogo;

    invoke-virtual {v2}, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->getParams()Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->getLogoParams()I

    move-result v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/DisPlayUtil;->toDp(Landroid/content/Context;I)I

    move-result v0

    .line 519
    .local v0, "logoWidth":I
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mScreenWidth:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_f
.end method
