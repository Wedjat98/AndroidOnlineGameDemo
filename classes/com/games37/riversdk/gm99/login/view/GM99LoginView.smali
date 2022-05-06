.class public Lcom/games37/riversdk/gm99/login/view/GM99LoginView;
.super Lcom/games37/riversdk/core/view/IView;
.source "GM99LoginView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/games37/riversdk/core/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/games37/riversdk/core/view/IView;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/games37/riversdk/core/callback/ResultCallback",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GM99LoginView"


# instance fields
.field private aListView:Landroid/widget/PopupWindow;

.field private btnLogin:Landroid/widget/Button;

.field private btnOpenRegister:Landroid/widget/Button;

.field private clickLogoTime:I

.field private etAccount:Landroid/widget/EditText;

.field private etPassword:Landroid/widget/EditText;

.field private isRecord:Z

.field private isShowAList:Z

.field private ivAccountList:Landroid/widget/ImageView;

.field private ivClose:Landroid/widget/ImageView;

.field private ivDirect:Landroid/widget/ImageView;

.field private ivFB:Landroid/widget/ImageView;

.field private ivGoogle:Landroid/widget/ImageView;

.field private ivLogo:Landroid/widget/ImageView;

.field private ivQuestion:Landroid/widget/ImageView;

.field private ivRecord:Landroid/widget/ImageView;

.field private loginDao:Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

.field private mAccountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/games37/riversdk/core/login/model/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsClose:Z

.field private presenter:Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;

.field private registerDialog:Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;

.field private tvRecordInfo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/view/IView;-><init>(Landroid/app/Activity;)V

    .line 116
    iput-boolean v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->isShowAList:Z

    .line 132
    iput v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->clickLogoTime:I

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->isRecord:Z

    .line 140
    iput-boolean v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mIsClose:Z

    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->init(Landroid/os/Bundle;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/view/IView;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 116
    iput-boolean v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->isShowAList:Z

    .line 132
    iput v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->clickLogoTime:I

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->isRecord:Z

    .line 140
    iput-boolean v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mIsClose:Z

    .line 149
    invoke-direct {p0, p2}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->init(Landroid/os/Bundle;)V

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mAccountList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivRecord:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->presenter:Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->loginDao:Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    return-object v0
.end method

.method static synthetic access$300(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->etAccount:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->etPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivAccountList:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Landroid/widget/PopupWindow;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->aListView:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$900(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->isRecord:Z

    return v0
.end method

.method static synthetic access$902(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/login/view/GM99LoginView;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->isRecord:Z

    return p1
.end method

.method private init(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 154
    if-eqz p1, :cond_12

    const-string v0, "IS_CLOSE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 155
    const-string v0, "IS_CLOSE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mIsClose:Z

    .line 158
    :cond_12
    new-instance v0, Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;

    invoke-direct {v0}, Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->presenter:Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;

    .line 159
    invoke-static {}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getInstance()Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->loginDao:Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    .line 161
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->initView()V

    .line 163
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->initLocalData()V

    .line 165
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->showPrivacyDialog(Landroid/app/Activity;)V

    .line 166
    return-void
.end method

.method private initLocalData()V
    .registers 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->loginDao:Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getAllAccountInfo(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mAccountList:Ljava/util/ArrayList;

    .line 332
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mAccountList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_22

    .line 333
    :cond_1b
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivAccountList:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    :cond_22
    return-void
.end method

.method private initPopWindow()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 292
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->etAccount:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->etAccount:Landroid/widget/EditText;

    .line 293
    invoke-virtual {v2}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    const/16 v5, 0x12c

    invoke-direct {v3, v4, v2, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->aListView:Landroid/widget/PopupWindow;

    .line 294
    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    const-string v4, "a1_sdk_pop_account_list"

    .line 295
    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    .line 294
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 296
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    const-string v3, "lvAccountList"

    .line 297
    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 298
    .local v0, "lvAccountList":Landroid/widget/ListView;
    new-instance v2, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;

    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mAccountList:Ljava/util/ArrayList;

    new-instance v5, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$1;

    invoke-direct {v5, p0}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$1;-><init>(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$OnDeleteCallback;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 320
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 321
    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->aListView:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 322
    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->aListView:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 323
    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->aListView:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    return-void
.end method

.method private initView()V
    .registers 7

    .prologue
    .line 172
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    const-string v5, "a1_sdk_activity_login"

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4, p0}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 173
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    const-string v4, "etAccount"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->etAccount:Landroid/widget/EditText;

    .line 174
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    const-string v4, "etPassword"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->etPassword:Landroid/widget/EditText;

    .line 175
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->etPassword:Landroid/widget/EditText;

    const/16 v4, 0x81

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 176
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->etPassword:Landroid/widget/EditText;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 177
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    const-string v4, "btnLogin"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->btnLogin:Landroid/widget/Button;

    .line 178
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    const-string v4, "btnOpenRegister"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->btnOpenRegister:Landroid/widget/Button;

    .line 179
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    const-string v4, "ivClose"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivClose:Landroid/widget/ImageView;

    .line 180
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    const-string v4, "ivAccountList"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivAccountList:Landroid/widget/ImageView;

    .line 181
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    const-string v4, "ivQuestion"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivQuestion:Landroid/widget/ImageView;

    .line 182
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    const-string v4, "ivFB"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivFB:Landroid/widget/ImageView;

    .line 183
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    const-string v4, "ivGoogle"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivGoogle:Landroid/widget/ImageView;

    .line 184
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    const-string v4, "ivDirect"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivDirect:Landroid/widget/ImageView;

    .line 185
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    const-string v4, "iv_sdk_logo"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivLogo:Landroid/widget/ImageView;

    .line 186
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    const-string v4, "ivRecord"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivRecord:Landroid/widget/ImageView;

    .line 187
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    const-string v4, "tvRecordInfo"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->tvRecordInfo:Landroid/widget/TextView;

    .line 189
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 190
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->etPassword:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 191
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->btnLogin:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->btnOpenRegister:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivAccountList:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivQuestion:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivFB:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivGoogle:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivDirect:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivRecord:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->tvRecordInfo:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-boolean v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mIsClose:Z

    if-eqz v3, :cond_136

    .line 204
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivClose:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    :cond_136
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->loginDao:Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    iget-object v4, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->isRecord(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->isRecord:Z

    .line 208
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivRecord:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->isRecord:Z

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 210
    const/4 v1, 0x0

    .line 211
    .local v1, "isLoginClickable":Z
    iget-boolean v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->isRecord:Z

    if-eqz v3, :cond_17f

    .line 213
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->loginDao:Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    iget-object v4, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getLastLoginAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "account":Ljava/lang/String;
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->loginDao:Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    iget-object v4, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getLastLoginPwd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "pwd":Ljava/lang/String;
    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17f

    invoke-static {v2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17f

    .line 216
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->etPassword:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 218
    const/4 v1, 0x1

    .line 221
    .end local v0    # "account":Ljava/lang/String;
    .end local v2    # "pwd":Ljava/lang/String;
    :cond_17f
    invoke-direct {p0, v1}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->updateLoginBtnState(Z)V

    .line 222
    return-void
.end method

.method private showAccountList()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 276
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->aListView:Landroid/widget/PopupWindow;

    if-nez v1, :cond_8

    .line 277
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->initPopWindow()V

    .line 279
    :cond_8
    iget-boolean v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->isShowAList:Z

    if-nez v1, :cond_27

    .line 280
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->aListView:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    const-string v3, "ivAccount"

    .line 281
    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 280
    invoke-virtual {p0, v2}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v0, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 285
    :goto_1f
    iget-boolean v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->isShowAList:Z

    if-nez v1, :cond_24

    const/4 v0, 0x1

    :cond_24
    iput-boolean v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->isShowAList:Z

    .line 286
    return-void

    .line 283
    :cond_27
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->aListView:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_1f
.end method

.method private showPrivacyDialog(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 502
    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->loginDao:Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    invoke-virtual {v2, p1}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getPrivacyStatus(Landroid/content/Context;)Z

    move-result v0

    .line 503
    .local v0, "isAgreePrivacy":Z
    if-nez v0, :cond_17

    .line 505
    new-instance v1, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;

    new-instance v2, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$3;

    invoke-direct {v2, p0, p1}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$3;-><init>(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;Landroid/app/Activity;)V

    invoke-direct {v1, p1, v2}, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;-><init>(Landroid/content/Context;Lcom/games37/riversdk/core/callback/OnBtnClickListener;)V

    .line 518
    .local v1, "safetyCertDialog":Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;
    const-string v2, "https://service.gm99.com/about/privacypolicy.html"

    invoke-virtual {v1, v2}, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;->show(Ljava/lang/String;)V

    .line 520
    .end local v1    # "safetyCertDialog":Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;
    :cond_17
    return-void
.end method

.method private showRegisterDialog()V
    .registers 5

    .prologue
    .line 477
    new-instance v0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->presenter:Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;

    new-instance v3, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$2;

    invoke-direct {v3, p0}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$2;-><init>(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;-><init>(Landroid/content/Context;Lcom/games37/riversdk/core/login/presenter/IloginPresenter;Lcom/games37/riversdk/core/callback/IAction;)V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->registerDialog:Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;

    .line 492
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->registerDialog:Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->loginDao:Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->isRecord(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->show(Z)V

    .line 493
    return-void
.end method

.method private showWelcomeToast(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 528
    new-instance v0, Lcom/games37/riversdk/core/login/view/WelcomeToast;

    const-string v2, "a1_sdk_dialog_welcome"

    const-string v3, "tvAccount"

    invoke-direct {v0, p1, v2, v3}, Lcom/games37/riversdk/core/login/view/WelcomeToast;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    .local v0, "toast":Lcom/games37/riversdk/core/login/view/WelcomeToast;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginAccount()Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "welcomeMsg":Ljava/lang/String;
    const-string v2, "MVFN"

    const-string v3, "GUEST"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 533
    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/login/view/WelcomeToast;->show(Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method private updateLoginBtnState(Z)V
    .registers 4
    .param p1, "isLoginClickable"    # Z

    .prologue
    .line 454
    if-eqz p1, :cond_10

    .line 455
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->btnLogin:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 456
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->btnLogin:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 461
    :goto_f
    return-void

    .line 458
    :cond_10
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->btnLogin:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 459
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->btnLogin:Landroid/widget/Button;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_f
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 439
    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "account":Ljava/lang/String;
    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->etPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "password":Ljava/lang/String;
    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static {v1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 442
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->updateLoginBtnState(Z)V

    .line 446
    :goto_2c
    return-void

    .line 444
    :cond_2d
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->updateLoginBtnState(Z)V

    goto :goto_2c
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->presenter:Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 258
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 339
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->btnLogin:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 340
    const-string v0, "GM99LoginView"

    const-string v1, "NORMAL LOGIN"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "account":Ljava/lang/String;
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->etPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, "password":Ljava/lang/String;
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->presenter:Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/games37/riversdk/core/login/model/UserType;->NORMAL_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;->login(Landroid/app/Activity;Lcom/games37/riversdk/core/login/model/UserType;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 390
    .end local v3    # "account":Ljava/lang/String;
    .end local v4    # "password":Ljava/lang/String;
    :cond_37
    :goto_37
    return-void

    .line 345
    :cond_38
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->btnOpenRegister:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 346
    const-string v0, "GM99LoginView"

    const-string v1, "REGISTER"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->showRegisterDialog()V

    goto :goto_37

    .line 349
    :cond_4b
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivFB:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 350
    const-string v0, "GM99LoginView"

    const-string v1, "FACEBOOK LOGIN"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v5, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->presenter:Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;

    iget-object v6, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    sget-object v7, Lcom/games37/riversdk/core/login/model/UserType;->FACEBOOK_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    move-object v9, v8

    move-object v10, p0

    invoke-virtual/range {v5 .. v10}, Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;->login(Landroid/app/Activity;Lcom/games37/riversdk/core/login/model/UserType;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    goto :goto_37

    .line 353
    :cond_66
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivGoogle:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 354
    const-string v0, "GM99LoginView"

    const-string v1, "GOOGLE LOGIN"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 356
    :cond_76
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivDirect:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 357
    const-string v0, "GM99LoginView"

    const-string v1, "ANYNOMOUS LOGIN"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v5, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->presenter:Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;

    iget-object v6, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    sget-object v7, Lcom/games37/riversdk/core/login/model/UserType;->ANYNOMOUS_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    move-object v9, v8

    move-object v10, p0

    invoke-virtual/range {v5 .. v10}, Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;->login(Landroid/app/Activity;Lcom/games37/riversdk/core/login/model/UserType;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    goto :goto_37

    .line 360
    :cond_91
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 361
    const-string v0, "GM99LoginView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close activity["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->presenter:Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;->close(Landroid/app/Activity;)V

    goto/16 :goto_37

    .line 364
    :cond_c2
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivAccountList:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 365
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->showAccountList()V

    goto/16 :goto_37

    .line 366
    :cond_cf
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivQuestion:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 367
    const-string v0, "GM99LoginView"

    const-string v1, "FORGET PASSWORD"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->presenter:Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;->showFindPwdDialog(Landroid/app/Activity;)V

    goto/16 :goto_37

    .line 370
    :cond_e7
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivRecord:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f7

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->tvRecordInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_139

    .line 371
    :cond_f7
    const-string v1, "GM99LoginView"

    const-string v2, "REMEMBER ACCOUNT PASSWORD"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-boolean v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->isRecord:Z

    if-nez v1, :cond_103

    const/4 v0, 0x1

    :cond_103
    iput-boolean v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->isRecord:Z

    .line 374
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivRecord:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->isRecord:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 375
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->loginDao:Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->isRecord:Z

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->setIsRecord(Landroid/content/Context;Z)V

    .line 376
    iget-boolean v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->isRecord:Z

    if-nez v0, :cond_37

    .line 377
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->loginDao:Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->setLastLoginAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->loginDao:Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->setLastLoginPwd(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_37

    .line 380
    :cond_139
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 381
    const-string v1, "GM99LoginView"

    const-string v2, "LOGO"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->clickLogoTime:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->clickLogoTime:I

    .line 384
    iget v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->clickLogoTime:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_37

    .line 386
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/games37/riversdk/core/util/SDKUtil;->uploadADParams(Landroid/app/Activity;Ljava/lang/String;)V

    .line 387
    iput v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->clickLogoTime:I

    goto/16 :goto_37
.end method

.method public onCreate(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 226
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 247
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->etPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 248
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 432
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 433
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 435
    :cond_b
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 419
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 420
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 422
    :cond_b
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p2, "paramView"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "paramLong"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p1, "paramAdapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->aListView:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 467
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/login/model/UserInfo;

    .line 468
    .local v0, "userInfo":Lcom/games37/riversdk/core/login/model/UserInfo;
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/login/model/UserInfo;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->etPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/login/model/UserInfo;->getPwd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 470
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 238
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 252
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 234
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 230
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 242
    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 53
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->onSuccess(ILjava/util/Map;)V

    return-void
.end method

.method public onSuccess(ILjava/util/Map;)V
    .registers 5
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 401
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->showWelcomeToast(Landroid/app/Activity;)V

    .line 403
    invoke-static {}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->getInstance()Lcom/games37/riversdk/core/callback/SDKCallbackInstance;

    move-result-object v0

    sget-object v1, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->LOGIN:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->getCallback(Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;)Lcom/games37/riversdk/core/callback/BaseCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/games37/riversdk/core/callback/BaseCallback;->onResult(ILjava/util/Map;)V

    .line 405
    invoke-static {}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getInstance()Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->show()V

    .line 407
    invoke-static {}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getInstance()Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getFunctionList(Landroid/content/Context;)V

    .line 408
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->presenter:Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;->close(Landroid/app/Activity;)V

    .line 409
    return-void
.end method

.method public setCloseStatus(Z)V
    .registers 4
    .param p1, "closeStatus"    # Z

    .prologue
    .line 267
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivClose:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 268
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivClose:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    :cond_c
    return-void
.end method
