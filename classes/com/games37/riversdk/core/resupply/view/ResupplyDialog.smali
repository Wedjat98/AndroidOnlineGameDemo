.class public Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;
.super Lcom/games37/riversdk/core/view/BaseDialog;
.source "ResupplyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "ResupplyDialog"


# instance fields
.field private horizontal_split:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mFlContent:Landroid/widget/FrameLayout;

.field private mListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

.field private mLlBtn:Landroid/widget/LinearLayout;

.field private mTvCancel:Landroid/widget/TextView;

.field private mTvConfirm:Landroid/widget/TextView;

.field private mTvContent:Landroid/widget/TextView;

.field private vertical_split:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 65
    iput-object p1, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mActivity:Landroid/app/Activity;

    .line 66
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->initView(Landroid/app/Activity;)V

    .line 67
    return-void
.end method

.method private changeSplitStatus(ZZ)V
    .registers 6
    .param p1, "showConfirm"    # Z
    .param p2, "showCancel"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 244
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->horizontal_split:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->vertical_split:Landroid/view/View;

    if-eqz v0, :cond_22

    .line 246
    if-nez p1, :cond_f

    if-eqz p2, :cond_23

    .line 247
    :cond_f
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->horizontal_split:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mLlBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 255
    :goto_19
    if-eqz p1, :cond_2e

    if-eqz p2, :cond_2e

    .line 256
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->vertical_split:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    :cond_22
    :goto_22
    return-void

    .line 250
    :cond_23
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->horizontal_split:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mLlBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_19

    .line 258
    :cond_2e
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->vertical_split:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_22
.end method

.method private initView(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 70
    const-string v1, "ResupplyDialog"

    const-string v2, "initView"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->setCanceledOnTouchOutside(Z)V

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "r1_sdk_resupply_dialog"

    .line 73
    invoke-static {p1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->setContentView(Landroid/view/View;)V

    .line 75
    const-string v1, "fl_content"

    .line 76
    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mFlContent:Landroid/widget/FrameLayout;

    .line 77
    const-string v1, "tv_content"

    .line 78
    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mTvContent:Landroid/widget/TextView;

    .line 79
    const-string v1, "tv_confirm"

    .line 80
    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mTvConfirm:Landroid/widget/TextView;

    .line 81
    const-string v1, "tv_cancel"

    .line 82
    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mTvCancel:Landroid/widget/TextView;

    .line 83
    const-string v1, "ll_btn"

    .line 84
    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mLlBtn:Landroid/widget/LinearLayout;

    .line 85
    const-string v1, "vertical_split"

    .line 86
    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->vertical_split:Landroid/view/View;

    .line 87
    const-string v1, "horizontal_split"

    .line 88
    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->horizontal_split:Landroid/view/View;

    .line 89
    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mTvConfirm:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mTvCancel:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .prologue
    .line 280
    invoke-super {p0}, Lcom/games37/riversdk/core/view/BaseDialog;->onBackPressed()V

    .line 281
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    if-eqz v0, :cond_c

    .line 282
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    invoke-interface {v0}, Lcom/games37/riversdk/core/callback/OnBtnClickListener;->onCancel()V

    .line 284
    :cond_c
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mTvConfirm:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 266
    invoke-virtual {p0}, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->dismiss()V

    .line 267
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    if-eqz v0, :cond_14

    .line 268
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    invoke-interface {v0}, Lcom/games37/riversdk/core/callback/OnBtnClickListener;->onConfirm()V

    .line 276
    :cond_14
    :goto_14
    return-void

    .line 270
    :cond_15
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mTvCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 271
    invoke-virtual {p0}, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->dismiss()V

    .line 272
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    if-eqz v0, :cond_14

    .line 273
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    invoke-interface {v0}, Lcom/games37/riversdk/core/callback/OnBtnClickListener;->onCancel()V

    goto :goto_14
.end method

.method public setCanceled(Z)Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;
    .registers 5
    .param p1, "flag"    # Z

    .prologue
    .line 100
    const-string v0, "ResupplyDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCanceled flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->setCanceledOnTouchOutside(Z)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->setCancelable(Z)V

    .line 103
    return-object p0
.end method

.method public setClickListener(IILcom/games37/riversdk/core/callback/OnBtnClickListener;)Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;
    .registers 11
    .param p1, "confirmTextResId"    # I
    .param p2, "cancelTextResId"    # I
    .param p3, "listener"    # Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    .prologue
    const/4 v6, -0x1

    .line 212
    const-string v3, "ResupplyDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setClickListener confirmTextResId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v3, "ResupplyDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setClickListener cancelTextResId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, "confirmText":Ljava/lang/String;
    if-eq p1, v6, :cond_3a

    .line 218
    :try_start_34
    iget-object v3, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_39} :catch_48

    move-result-object v1

    .line 225
    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    .line 226
    .local v0, "cancelText":Ljava/lang/String;
    if-eq p2, v6, :cond_43

    .line 228
    :try_start_3d
    iget-object v3, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_42} :catch_67

    move-result-object v0

    .line 234
    :cond_43
    :goto_43
    invoke-virtual {p0, v1, v0, p3}, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->setClickListener(Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/OnBtnClickListener;)Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;

    move-result-object v3

    return-object v3

    .line 219
    .end local v0    # "cancelText":Ljava/lang/String;
    :catch_48
    move-exception v2

    .line 220
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ResupplyDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setClickListener confirmTextResId error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v1, 0x0

    goto :goto_3a

    .line 229
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cancelText":Ljava/lang/String;
    :catch_67
    move-exception v2

    .line 230
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "ResupplyDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setClickListener cancelTextResId error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x0

    goto :goto_43
.end method

.method public setClickListener(Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/OnBtnClickListener;)Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;
    .registers 9
    .param p1, "confirmText"    # Ljava/lang/String;
    .param p2, "cancelText"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 172
    iput-object p3, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, "showConfirm":Z
    const/4 v0, 0x0

    .line 176
    .local v0, "showCancel":Z
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 177
    const/4 v1, 0x1

    .line 178
    iget-object v2, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mTvConfirm:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v2, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mTvConfirm:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :goto_18
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 187
    const/4 v0, 0x1

    .line 188
    iget-object v2, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mTvCancel:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v2, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mTvCancel:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_29
    invoke-direct {p0, v1, v0}, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->changeSplitStatus(ZZ)V

    .line 197
    return-object p0

    .line 182
    :cond_2d
    const/4 v1, 0x0

    .line 183
    iget-object v2, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mTvConfirm:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_18

    .line 192
    :cond_34
    const/4 v0, 0x0

    .line 193
    iget-object v2, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mTvCancel:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_29
.end method

.method public setContent(I)Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;
    .registers 7
    .param p1, "resId"    # I

    .prologue
    .line 134
    const-string v2, "ResupplyDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setContent resId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, "content":Ljava/lang/String;
    :try_start_19
    iget-object v2, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_24

    move-result-object v0

    .line 142
    :goto_1f
    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->setContent(Ljava/lang/String;)Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;

    move-result-object v2

    return-object v2

    .line 138
    :catch_24
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ResupplyDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setContent error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public setContent(Landroid/view/View;)Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 153
    if-eqz p1, :cond_1c

    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mTvContent:Landroid/widget/TextView;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mFlContent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1c

    .line 154
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mFlContent:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mTvContent:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mFlContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 158
    :cond_1c
    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;
    .registers 6
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 113
    const-string v0, "ResupplyDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContent content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 124
    :cond_1f
    :goto_1f
    return-object p0

    .line 117
    :cond_20
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mFlContent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_29

    .line 118
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mFlContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 120
    :cond_29
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mTvContent:Landroid/widget/TextView;

    if-eqz v0, :cond_1f

    .line 121
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mTvContent:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->mTvContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f
.end method
