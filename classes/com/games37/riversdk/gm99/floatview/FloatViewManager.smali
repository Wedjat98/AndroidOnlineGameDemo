.class public Lcom/games37/riversdk/gm99/floatview/FloatViewManager;
.super Lcom/games37/riversdk/core/floatview/IManager;
.source "FloatViewManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FloatViewManager"

.field private static instance:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

.field private static mActivity:Landroid/app/Activity;

.field private static mPresenter:Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;


# instance fields
.field private isApplying:Z

.field private mCloseUntilNextOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFloatView:Lcom/games37/riversdk/gm99/floatview/view/FloatView;

.field private mFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

.field private mIsInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsShowFloatView:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->instance:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Lcom/games37/riversdk/core/floatview/IManager;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mIsShowFloatView:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mCloseUntilNextOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mIsInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    iput-boolean v2, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->isApplying:Z

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/gm99/floatview/FloatViewManager;Landroid/app/Activity;)V
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/floatview/FloatViewManager;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->createFloatView(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/games37/riversdk/gm99/floatview/FloatViewManager;)Lcom/games37/riversdk/gm99/floatview/view/FloatView;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFloatView:Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/games37/riversdk/gm99/floatview/FloatViewManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/floatview/FloatViewManager;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->isApplying:Z

    return p1
.end method

.method static synthetic access$300(Lcom/games37/riversdk/gm99/floatview/FloatViewManager;)Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    return-object v0
.end method

.method static synthetic access$302(Lcom/games37/riversdk/gm99/floatview/FloatViewManager;Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;)Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/floatview/FloatViewManager;
    .param p1, "x1"    # Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    return-object p1
.end method

.method private applyPermission(Landroid/app/Activity;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->isApplying:Z

    .line 162
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "a1_sdk_floatview_apply_permission"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 161
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "content":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "a1_sdk_cancel_text"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 163
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "cancelText":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "a1_sdk_confirm"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 165
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "confirmText":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->getInstance(Landroid/content/Context;)Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    move-result-object v0

    new-instance v5, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$2;

    invoke-direct {v5, p0, p1}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$2;-><init>(Lcom/games37/riversdk/gm99/floatview/FloatViewManager;Landroid/app/Activity;)V

    move-object v1, p1

    .line 169
    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->showApplyPermissionDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/OnBtnClickListener;)V

    .line 187
    return-void
.end method

.method private createFloatView(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 193
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFloatView:Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    if-eqz v0, :cond_17

    .line 196
    new-instance v0, Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    invoke-direct {v0, p1, v1}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;-><init>(Landroid/app/Activity;Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;)V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFloatView:Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    .line 198
    :cond_17
    return-void
.end method

.method public static getInstance()Lcom/games37/riversdk/gm99/floatview/FloatViewManager;
    .registers 2

    .prologue
    .line 73
    sget-object v0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->instance:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    if-nez v0, :cond_13

    .line 74
    const-class v1, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    monitor-enter v1

    .line 75
    :try_start_7
    sget-object v0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->instance:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    if-nez v0, :cond_12

    .line 76
    new-instance v0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    invoke-direct {v0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;-><init>()V

    sput-object v0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->instance:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    .line 78
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 80
    :cond_13
    sget-object v0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->instance:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    return-object v0

    .line 78
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private isShow()Z
    .registers 3

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->isShowFloatView()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 242
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->isCloseUntilNextOpen()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    if-eqz v0, :cond_32

    const-string v0, "0"

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    .line 246
    invoke-virtual {v1}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->getSdk_state()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    .line 248
    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->getFunction_lists()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    .line 250
    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->getFunction_lists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_34

    .line 251
    :cond_32
    const/4 v0, 0x0

    .line 253
    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x1

    goto :goto_33
.end method

.method private showFloatView(Landroid/app/Activity;Z)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isLoginSuccess"    # Z

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->isShow()Z

    move-result v1

    .line 128
    .local v1, "isShow":Z
    const-string v2, "FloatViewManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showFloatView isShow = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    if-eqz v1, :cond_3f

    invoke-static {p1}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 132
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->getInstance(Landroid/content/Context;)Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    move-result-object v2

    .line 133
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->hasPermission(Landroid/content/Context;)Z

    move-result v0

    .line 134
    .local v0, "hasPermission":Z
    if-nez v0, :cond_40

    .line 136
    if-eqz p2, :cond_3f

    iget-boolean v2, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->isApplying:Z

    if-nez v2, :cond_3f

    .line 137
    invoke-direct {p0, p1}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->applyPermission(Landroid/app/Activity;)V

    .line 152
    .end local v0    # "hasPermission":Z
    :cond_3f
    :goto_3f
    return-void

    .line 142
    .restart local v0    # "hasPermission":Z
    :cond_40
    new-instance v2, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$1;

    invoke-direct {v2, p0, p1}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$1;-><init>(Lcom/games37/riversdk/gm99/floatview/FloatViewManager;Landroid/app/Activity;)V

    invoke-virtual {p1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3f
.end method


# virtual methods
.method public destroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 330
    const-string v0, "FloatViewManager"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFloatView:Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    if-eqz v0, :cond_1c

    .line 333
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFloatView:Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->hide()V

    .line 334
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFloatView:Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    invoke-virtual {v0, v3}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->setShowing(Z)V

    .line 335
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFloatView:Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->destory()V

    .line 338
    :cond_1c
    iput-object v2, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mRoleData:Lcom/games37/riversdk/core/model/RoleData;

    .line 339
    iput-object v2, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFloatView:Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    .line 340
    iput-object v2, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    .line 341
    sput-object v2, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mPresenter:Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

    .line 342
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mIsInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 343
    return-void
.end method

.method public download(Landroid/app/Activity;Z)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isShow"    # Z

    .prologue
    .line 277
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    if-eqz v0, :cond_16

    .line 279
    invoke-static {}, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->getInstance()Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    new-instance v3, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$5;

    invoke-direct {v3, p0, p2}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$5;-><init>(Lcom/games37/riversdk/gm99/floatview/FloatViewManager;Z)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->download(Landroid/content/Context;Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;Lcom/games37/riversdk/gm99/floatview/download/DownloadManager$FinishCallback;)V

    .line 293
    :cond_16
    return-void
.end method

.method public getFunctionList(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    sget-object v0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mPresenter:Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

    if-eqz v0, :cond_12

    .line 207
    sget-object v0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mPresenter:Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$3;

    invoke-direct {v2, p0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$3;-><init>(Lcom/games37/riversdk/gm99/floatview/FloatViewManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;->getFunsList(Landroid/content/Context;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 230
    :cond_12
    return-void
.end method

.method public hide()V
    .registers 3

    .prologue
    .line 258
    const-string v0, "FloatViewManager"

    const-string v1, "hide"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFloatView:Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 260
    sget-object v0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$4;

    invoke-direct {v1, p0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$4;-><init>(Lcom/games37/riversdk/gm99/floatview/FloatViewManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 269
    :cond_1d
    return-void
.end method

.method public init(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    .line 85
    const-string v1, "FloatViewManager"

    const-string v2, "init"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sput-object p1, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mActivity:Landroid/app/Activity;

    .line 87
    sget-object v1, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mPresenter:Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

    if-nez v1, :cond_15

    .line 88
    new-instance v1, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

    invoke-direct {v1}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;-><init>()V

    sput-object v1, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mPresenter:Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

    .line 92
    :cond_15
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/games37/riversdk/core/model/SDKInformation;->getMetaDataBundle()Lcom/games37/riversdk/core/model/DataBundle;

    move-result-object v1

    const-string v2, "RiverSDK.ShowFloatView"

    .line 93
    invoke-virtual {v1, v2, v3}, Lcom/games37/riversdk/core/model/DataBundle;->getBoolData(Ljava/lang/String;Z)Z

    move-result v0

    .line 94
    .local v0, "isShow":Z
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mIsShowFloatView:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_2c

    .line 95
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mIsShowFloatView:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 98
    :cond_2c
    invoke-static {}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getInstance()Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getFloatViewFunInfo(Landroid/content/Context;)Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    .line 100
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mIsInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_3f

    .line 101
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mIsInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 103
    :cond_3f
    return-void
.end method

.method public isCloseUntilNextOpen()Z
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mCloseUntilNextOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_6

    .line 361
    const/4 v0, 0x0

    .line 363
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mCloseUntilNextOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    goto :goto_5
.end method

.method public isInit()Z
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mIsInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_6

    .line 302
    const/4 v0, 0x0

    .line 304
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mIsInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    goto :goto_5
.end method

.method public isShowFloatView()Z
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mIsShowFloatView:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_6

    .line 347
    const/4 v0, 0x0

    .line 349
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mIsShowFloatView:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    goto :goto_5
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 309
    const-string v0, "FloatViewManager"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginStatus()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 313
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->isInit()Z

    move-result v0

    if-nez v0, :cond_23

    .line 314
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mIsInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 315
    sget-object v0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->init(Landroid/app/Activity;)V

    .line 321
    :cond_22
    :goto_22
    return-void

    .line 319
    :cond_23
    sget-object v0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->showFloatView(Landroid/app/Activity;Z)V

    goto :goto_22
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->hide()V

    .line 325
    return-void
.end method

.method public setCloseUntilNextOpen(Z)V
    .registers 3
    .param p1, "closeUntilNextOpen"    # Z

    .prologue
    .line 368
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mCloseUntilNextOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_9

    .line 369
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mCloseUntilNextOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 371
    :cond_9
    return-void
.end method

.method public setIsShowFloatView(Z)V
    .registers 3
    .param p1, "isShowFloatView"    # Z

    .prologue
    .line 354
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mIsShowFloatView:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_9

    .line 355
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mIsShowFloatView:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 357
    :cond_9
    return-void
.end method

.method public show()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 107
    const-string v0, "FloatViewManager"

    const-string v1, "show"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginStatus()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 111
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->isInit()Z

    move-result v0

    if-nez v0, :cond_23

    .line 112
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mIsInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 113
    sget-object v0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->init(Landroid/app/Activity;)V

    .line 118
    :cond_22
    :goto_22
    return-void

    .line 116
    :cond_23
    sget-object v0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0, v2}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->showFloatView(Landroid/app/Activity;Z)V

    goto :goto_22
.end method
