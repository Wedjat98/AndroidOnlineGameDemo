.class public Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;
.super Lcom/games37/riversdk/core/view/IDialog;
.source "GM99RegisterDialog.java"


# instance fields
.field private btnRegister:Landroid/widget/Button;

.field private etConfirmPassword:Landroid/widget/EditText;

.field private etRegisterAccount:Landroid/widget/EditText;

.field private etRegisterPassword:Landroid/widget/EditText;

.field private iAction:Lcom/games37/riversdk/core/callback/IAction;

.field private ivAgree:Landroid/widget/ImageView;

.field private ivRecord:Landroid/widget/ImageView;

.field private mIsAgree:Z

.field private mIsRecord:Z

.field private tvPrivacy:Landroid/widget/TextView;

.field private tvRecordInfo:Landroid/widget/TextView;

.field private tvService:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/games37/riversdk/core/login/presenter/IloginPresenter;Lcom/games37/riversdk/core/callback/IAction;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "presenter"    # Lcom/games37/riversdk/core/login/presenter/IloginPresenter;
    .param p3, "iAction"    # Lcom/games37/riversdk/core/callback/IAction;

    .prologue
    const/4 v0, 0x1

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/view/IDialog;-><init>(Landroid/content/Context;Lcom/games37/riversdk/core/login/presenter/IloginPresenter;)V

    .line 76
    iput-boolean v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mIsAgree:Z

    .line 80
    iput-boolean v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mIsRecord:Z

    .line 89
    iput-object p3, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->iAction:Lcom/games37/riversdk/core/callback/IAction;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;)Lcom/games37/riversdk/core/callback/IAction;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->iAction:Lcom/games37/riversdk/core/callback/IAction;

    return-object v0
.end method

.method private init(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x81

    .line 103
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mContext:Landroid/content/Context;

    const-string v1, "etRegisterAccount"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etRegisterAccount:Landroid/widget/EditText;

    .line 105
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mContext:Landroid/content/Context;

    const-string v1, "etRegisterPassword"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etRegisterPassword:Landroid/widget/EditText;

    .line 107
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etRegisterPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 108
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etRegisterPassword:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 110
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mContext:Landroid/content/Context;

    const-string v1, "etConfirmPassword"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etConfirmPassword:Landroid/widget/EditText;

    .line 112
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 113
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etConfirmPassword:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 115
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mContext:Landroid/content/Context;

    const-string v1, "ivAgree"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->ivAgree:Landroid/widget/ImageView;

    .line 116
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mContext:Landroid/content/Context;

    const-string v1, "tvService"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->tvService:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mContext:Landroid/content/Context;

    const-string v1, "tvPrivacy"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->tvPrivacy:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mContext:Landroid/content/Context;

    const-string v1, "btnRegister"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->btnRegister:Landroid/widget/Button;

    .line 119
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mContext:Landroid/content/Context;

    const-string v1, "ivRecord"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->ivRecord:Landroid/widget/ImageView;

    .line 120
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mContext:Landroid/content/Context;

    const-string v1, "tvRecordInfo"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->tvRecordInfo:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->ivAgree:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 123
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->btnRegister:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->btnRegister:Landroid/widget/Button;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mContext:Landroid/content/Context;

    const-string v3, "a1_gray"

    .line 125
    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 127
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etRegisterAccount:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etRegisterPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->ivAgree:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->tvService:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->tvPrivacy:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->btnRegister:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->ivRecord:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->tvRecordInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method

.method private register(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 215
    iget-boolean v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mIsAgree:Z

    if-eqz v3, :cond_5c

    .line 217
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etRegisterAccount:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "account":Ljava/lang/String;
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etRegisterPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "pwd":Ljava/lang/String;
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "confirm":Ljava/lang/String;
    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 223
    invoke-static {v2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 224
    invoke-static {v1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 226
    invoke-static {v2, v1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isPasswdLegal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 227
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 228
    const-string v3, "a1_sdk_error_cpasswd"

    invoke-static {p1, v3}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByResName(Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    .end local v0    # "account":Ljava/lang/String;
    .end local v1    # "confirm":Ljava/lang/String;
    .end local v2    # "pwd":Ljava/lang/String;
    :cond_50
    :goto_50
    return-void

    .line 231
    .restart local v0    # "account":Ljava/lang/String;
    .restart local v1    # "confirm":Ljava/lang/String;
    .restart local v2    # "pwd":Ljava/lang/String;
    :cond_51
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->presenter:Lcom/games37/riversdk/core/login/presenter/IloginPresenter;

    new-instance v4, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog$1;

    invoke-direct {v4, p0, p1}, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog$1;-><init>(Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;Landroid/app/Activity;)V

    invoke-interface {v3, p1, v0, v2, v4}, Lcom/games37/riversdk/core/login/presenter/IloginPresenter;->doRegisterAction(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    goto :goto_50

    .line 256
    .end local v0    # "account":Ljava/lang/String;
    .end local v1    # "confirm":Ljava/lang/String;
    .end local v2    # "pwd":Ljava/lang/String;
    :cond_5c
    const-string v3, "a1_dialog_agreement_text"

    invoke-static {p1, v3}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByResName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_50
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 9
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 169
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etRegisterAccount:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "account":Ljava/lang/String;
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etRegisterPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "pwd":Ljava/lang/String;
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "confirmPwd":Ljava/lang/String;
    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 173
    invoke-static {v2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 174
    invoke-static {v1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 175
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->btnRegister:Landroid/widget/Button;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 176
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->btnRegister:Landroid/widget/Button;

    iget-object v4, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mContext:Landroid/content/Context;

    const-string v6, "a1_orange"

    .line 177
    invoke-static {v5, v6}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 176
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 183
    :goto_59
    return-void

    .line 179
    :cond_5a
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->btnRegister:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 180
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->btnRegister:Landroid/widget/Button;

    iget-object v4, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mContext:Landroid/content/Context;

    const-string v6, "a1_gray"

    .line 181
    invoke-static {v5, v6}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 180
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_59
.end method

.method public dismiss()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 194
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etRegisterAccount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etRegisterPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etConfirmPassword:Landroid/widget/EditText;

    .line 195
    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 196
    :cond_19
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    .line 197
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 198
    .local v0, "inputmanger":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etRegisterAccount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 199
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etRegisterPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 200
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 201
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etRegisterAccount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 202
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etRegisterPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 203
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->etConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 205
    .end local v0    # "inputmanger":Landroid/view/inputmethod/InputMethodManager;
    :cond_4d
    invoke-super {p0}, Lcom/games37/riversdk/core/view/IDialog;->dismiss()V

    .line 206
    return-void
.end method

.method public initView()V
    .registers 5

    .prologue
    .line 94
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mContext:Landroid/content/Context;

    const-string v3, "a1_sdk_dialog_register"

    .line 95
    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    .line 94
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->init(Landroid/view/View;)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->setContentView(Landroid/view/View;)V

    .line 98
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mContext:Landroid/content/Context;

    const-string v3, "a1_register_dialog_anim"

    .line 99
    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 98
    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 100
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->ivAgree:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 143
    iget-boolean v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mIsAgree:Z

    if-nez v3, :cond_18

    :goto_e
    iput-boolean v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mIsAgree:Z

    .line 144
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->ivAgree:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mIsAgree:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 165
    :cond_17
    :goto_17
    return-void

    :cond_18
    move v1, v2

    .line 143
    goto :goto_e

    .line 145
    :cond_1a
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->tvService:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 147
    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->presenter:Lcom/games37/riversdk/core/login/presenter/IloginPresenter;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v2, v1}, Lcom/games37/riversdk/core/login/presenter/IloginPresenter;->showService(Landroid/app/Activity;)V

    goto :goto_17

    .line 148
    :cond_2c
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->tvPrivacy:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 150
    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->presenter:Lcom/games37/riversdk/core/login/presenter/IloginPresenter;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v2, v1}, Lcom/games37/riversdk/core/login/presenter/IloginPresenter;->showPrivacy(Landroid/app/Activity;)V

    goto :goto_17

    .line 151
    :cond_3e
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->btnRegister:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 153
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->register(Landroid/app/Activity;)V

    goto :goto_17

    .line 154
    :cond_4e
    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->ivRecord:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->tvRecordInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 156
    :cond_5e
    iget-boolean v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mIsRecord:Z

    if-nez v3, :cond_81

    :goto_62
    iput-boolean v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mIsRecord:Z

    .line 157
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->ivRecord:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mIsRecord:Z

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 159
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->iAction:Lcom/games37/riversdk/core/callback/IAction;

    if-eqz v1, :cond_17

    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 161
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "isRecord"

    iget-boolean v3, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mIsRecord:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 162
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->iAction:Lcom/games37/riversdk/core/callback/IAction;

    invoke-interface {v1, v2, v0}, Lcom/games37/riversdk/core/callback/IAction;->onFinished(ILandroid/os/Bundle;)V

    goto :goto_17

    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_81
    move v1, v2

    .line 156
    goto :goto_62
.end method

.method public show(Z)V
    .registers 4
    .param p1, "isRecord"    # Z

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mIsRecord:Z

    .line 188
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->ivRecord:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->mIsRecord:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 189
    invoke-super {p0}, Lcom/games37/riversdk/core/view/IDialog;->show()V

    .line 190
    return-void
.end method

.method public showSnackBar(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 261
    new-instance v0, Lcom/games37/riversdk/core/view/SnackBar;

    invoke-direct {v0, p1, p2}, Lcom/games37/riversdk/core/view/SnackBar;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 262
    .local v0, "snackBar":Lcom/games37/riversdk/core/view/SnackBar;
    new-instance v1, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog$2;

    invoke-direct {v1, p0}, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog$2;-><init>(Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;)V

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/view/SnackBar;->setOnhideListener(Lcom/games37/riversdk/core/view/SnackBar$OnHideListener;)V

    .line 269
    invoke-virtual {v0}, Lcom/games37/riversdk/core/view/SnackBar;->show()V

    .line 270
    return-void
.end method
