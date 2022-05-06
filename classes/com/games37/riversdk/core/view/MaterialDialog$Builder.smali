.class Lcom/games37/riversdk/core/view/MaterialDialog$Builder;
.super Ljava/lang/Object;
.source "MaterialDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/core/view/MaterialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Builder"
.end annotation


# instance fields
.field private mAlertDialogWindow:Landroid/view/Window;

.field private mButtonLayout:Landroid/widget/LinearLayout;

.field private mMessageContentRoot:Landroid/view/ViewGroup;

.field private mMessageView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/games37/riversdk/core/view/MaterialDialog;


# direct methods
.method private constructor <init>(Lcom/games37/riversdk/core/view/MaterialDialog;)V
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 255
    iput-object p1, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->this$0:Lcom/games37/riversdk/core/view/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    new-instance v2, Landroid/app/AlertDialog$Builder;

    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$200(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    # setter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {p1, v2}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$102(Lcom/games37/riversdk/core/view/MaterialDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 257
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$100(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 259
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$100(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x20008

    .line 260
    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 262
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$100(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0xf

    .line 263
    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 265
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$100(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iput-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    .line 266
    iget-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$200(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 270
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$200(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "r1_baseview_material_dialog_layout"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 272
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 273
    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 275
    iget-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$200(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "r1_baseview_material_dialog_window"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 278
    iget-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 280
    iget-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$200(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "tv_title"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mTitleView:Landroid/widget/TextView;

    .line 281
    iget-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$200(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "tv_message"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mMessageView:Landroid/widget/TextView;

    .line 282
    iget-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$200(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "ll_buttonLayout"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    .line 283
    iget-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$200(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "btn_p"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    # setter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mPositiveButton:Landroid/widget/Button;
    invoke-static {p1, v2}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$302(Lcom/games37/riversdk/core/view/MaterialDialog;Landroid/widget/Button;)Landroid/widget/Button;

    .line 284
    iget-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$200(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "btn_n"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    # setter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mNegativeButton:Landroid/widget/Button;
    invoke-static {p1, v2}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$402(Lcom/games37/riversdk/core/view/MaterialDialog;Landroid/widget/Button;)Landroid/widget/Button;

    .line 285
    iget-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    .line 286
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$200(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "sl_message_content_root"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 285
    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mMessageContentRoot:Landroid/view/ViewGroup;

    .line 287
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mView:Landroid/view/View;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$500(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_11e

    .line 288
    iget-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    .line 289
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$200(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "ll_contentView"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 288
    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 290
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 291
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mView:Landroid/view/View;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$500(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 293
    .end local v1    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_11e
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mTitleResId:I
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$600(Lcom/games37/riversdk/core/view/MaterialDialog;)I

    move-result v2

    if-eqz v2, :cond_12b

    .line 294
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mTitleResId:I
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$600(Lcom/games37/riversdk/core/view/MaterialDialog;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->setTitle(I)V

    .line 296
    :cond_12b
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mTitle:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$700(Lcom/games37/riversdk/core/view/MaterialDialog;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_138

    .line 297
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mTitle:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$700(Lcom/games37/riversdk/core/view/MaterialDialog;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->setTitle(Ljava/lang/CharSequence;)V

    .line 299
    :cond_138
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mTitle:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$700(Lcom/games37/riversdk/core/view/MaterialDialog;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_149

    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mTitleResId:I
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$600(Lcom/games37/riversdk/core/view/MaterialDialog;)I

    move-result v2

    if-nez v2, :cond_149

    .line 300
    iget-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    :cond_149
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mMessageResId:I
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$800(Lcom/games37/riversdk/core/view/MaterialDialog;)I

    move-result v2

    if-eqz v2, :cond_156

    .line 303
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mMessageResId:I
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$800(Lcom/games37/riversdk/core/view/MaterialDialog;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->setMessage(I)V

    .line 305
    :cond_156
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mMessage:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$900(Lcom/games37/riversdk/core/view/MaterialDialog;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_163

    .line 306
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mMessage:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$900(Lcom/games37/riversdk/core/view/MaterialDialog;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->setMessage(Ljava/lang/CharSequence;)V

    .line 308
    :cond_163
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->pId:I
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1000(Lcom/games37/riversdk/core/view/MaterialDialog;)I

    move-result v2

    if-eq v2, v5, :cond_191

    .line 309
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mPositiveButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$300(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 310
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mPositiveButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$300(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/widget/Button;

    move-result-object v2

    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->pId:I
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1000(Lcom/games37/riversdk/core/view/MaterialDialog;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 311
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mPositiveButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$300(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p1, Lcom/games37/riversdk/core/view/MaterialDialog;->pListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    # invokes: Lcom/games37/riversdk/core/view/MaterialDialog;->isLollipop()Z
    invoke-static {}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_191

    .line 313
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mPositiveButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$300(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setElevation(F)V

    .line 316
    :cond_191
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->nId:I
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1200(Lcom/games37/riversdk/core/view/MaterialDialog;)I

    move-result v2

    if-eq v2, v5, :cond_1bf

    .line 317
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mNegativeButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$400(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 318
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mNegativeButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$400(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/widget/Button;

    move-result-object v2

    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->nId:I
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1200(Lcom/games37/riversdk/core/view/MaterialDialog;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 319
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mNegativeButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$400(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p1, Lcom/games37/riversdk/core/view/MaterialDialog;->nListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    # invokes: Lcom/games37/riversdk/core/view/MaterialDialog;->isLollipop()Z
    invoke-static {}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_1bf

    .line 321
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mNegativeButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$400(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setElevation(F)V

    .line 324
    :cond_1bf
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->pText:Ljava/lang/String;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1300(Lcom/games37/riversdk/core/view/MaterialDialog;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/games37/riversdk/core/view/MaterialDialog;->isNullOrEmpty(Ljava/lang/String;)Z
    invoke-static {p1, v2}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1400(Lcom/games37/riversdk/core/view/MaterialDialog;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f1

    .line 325
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mPositiveButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$300(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 326
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mPositiveButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$300(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/widget/Button;

    move-result-object v2

    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->pText:Ljava/lang/String;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1300(Lcom/games37/riversdk/core/view/MaterialDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 327
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mPositiveButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$300(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p1, Lcom/games37/riversdk/core/view/MaterialDialog;->pListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    # invokes: Lcom/games37/riversdk/core/view/MaterialDialog;->isLollipop()Z
    invoke-static {}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_1f1

    .line 329
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mPositiveButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$300(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setElevation(F)V

    .line 333
    :cond_1f1
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->nText:Ljava/lang/String;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1500(Lcom/games37/riversdk/core/view/MaterialDialog;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/games37/riversdk/core/view/MaterialDialog;->isNullOrEmpty(Ljava/lang/String;)Z
    invoke-static {p1, v2}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1400(Lcom/games37/riversdk/core/view/MaterialDialog;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_223

    .line 334
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mNegativeButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$400(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 335
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mNegativeButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$400(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/widget/Button;

    move-result-object v2

    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->nText:Ljava/lang/String;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1500(Lcom/games37/riversdk/core/view/MaterialDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 336
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mNegativeButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$400(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p1, Lcom/games37/riversdk/core/view/MaterialDialog;->nListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    # invokes: Lcom/games37/riversdk/core/view/MaterialDialog;->isLollipop()Z
    invoke-static {}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_223

    .line 338
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mNegativeButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$400(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setElevation(F)V

    .line 341
    :cond_223
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->pText:Ljava/lang/String;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1300(Lcom/games37/riversdk/core/view/MaterialDialog;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/games37/riversdk/core/view/MaterialDialog;->isNullOrEmpty(Ljava/lang/String;)Z
    invoke-static {p1, v2}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1400(Lcom/games37/riversdk/core/view/MaterialDialog;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23a

    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->pId:I
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1000(Lcom/games37/riversdk/core/view/MaterialDialog;)I

    move-result v2

    if-ne v2, v5, :cond_23a

    .line 342
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mPositiveButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$300(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 344
    :cond_23a
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->nText:Ljava/lang/String;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1500(Lcom/games37/riversdk/core/view/MaterialDialog;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/games37/riversdk/core/view/MaterialDialog;->isNullOrEmpty(Ljava/lang/String;)Z
    invoke-static {p1, v2}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1400(Lcom/games37/riversdk/core/view/MaterialDialog;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_251

    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->nId:I
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1200(Lcom/games37/riversdk/core/view/MaterialDialog;)I

    move-result v2

    if-ne v2, v5, :cond_251

    .line 345
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mNegativeButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$400(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 347
    :cond_251
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mBackgroundResId:I
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1600(Lcom/games37/riversdk/core/view/MaterialDialog;)I

    move-result v2

    if-eq v2, v5, :cond_270

    .line 348
    iget-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    .line 349
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$200(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "ll_material_background"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 348
    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 350
    .restart local v1    # "linearLayout":Landroid/widget/LinearLayout;
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mBackgroundResId:I
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1600(Lcom/games37/riversdk/core/view/MaterialDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 352
    .end local v1    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_270
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1700(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_28f

    .line 353
    iget-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    .line 354
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$200(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "ll_material_background"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 353
    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 355
    .restart local v1    # "linearLayout":Landroid/widget/LinearLayout;
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1700(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 358
    .end local v1    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_28f
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mMessageContentView:Landroid/view/View;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1800(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2c4

    .line 359
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mMessageContentView:Landroid/view/View;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1800(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->setContentView(Landroid/view/View;)V

    .line 363
    :cond_29c
    :goto_29c
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$100(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v2

    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mCancel:Z
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$2000(Lcom/games37/riversdk/core/view/MaterialDialog;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 364
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$100(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v2

    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mCancel:Z
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$2000(Lcom/games37/riversdk/core/view/MaterialDialog;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 365
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$2100(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v2

    if-eqz v2, :cond_2c3

    .line 366
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$100(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v2

    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$2100(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 368
    :cond_2c3
    return-void

    .line 360
    :cond_2c4
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mMessageContentViewResId:I
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1900(Lcom/games37/riversdk/core/view/MaterialDialog;)I

    move-result v2

    if-eqz v2, :cond_29c

    .line 361
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mMessageContentViewResId:I
    invoke-static {p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$1900(Lcom/games37/riversdk/core/view/MaterialDialog;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->setContentView(I)V

    goto :goto_29c
.end method

.method synthetic constructor <init>(Lcom/games37/riversdk/core/view/MaterialDialog;Lcom/games37/riversdk/core/view/MaterialDialog$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;
    .param p2, "x1"    # Lcom/games37/riversdk/core/view/MaterialDialog$1;

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;-><init>(Lcom/games37/riversdk/core/view/MaterialDialog;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/games37/riversdk/core/view/MaterialDialog$Builder;)Landroid/view/Window;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    return-object v0
.end method


# virtual methods
.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 539
    iget-object v1, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->this$0:Lcom/games37/riversdk/core/view/MaterialDialog;

    .line 540
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$200(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "ll_material_background"

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 539
    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 541
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 542
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 6
    .param p1, "resId"    # I

    .prologue
    .line 546
    iget-object v1, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->this$0:Lcom/games37/riversdk/core/view/MaterialDialog;

    .line 547
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$200(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "ll_material_background"

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 546
    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 548
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 549
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 3
    .param p1, "canceledOnTouchOutside"    # Z

    .prologue
    .line 553
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->this$0:Lcom/games37/riversdk/core/view/MaterialDialog;

    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$100(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 554
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->this$0:Lcom/games37/riversdk/core/view/MaterialDialog;

    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$100(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 555
    return-void
.end method

.method public setContentView(I)V
    .registers 4
    .param p1, "layoutResId"    # I

    .prologue
    .line 530
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mMessageContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 533
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mMessageContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mMessageContentRoot:Landroid/view/ViewGroup;

    .line 534
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 535
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 10
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v4, -0x1

    .line 499
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 501
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    instance-of v4, p1, Landroid/widget/ListView;

    if-eqz v4, :cond_16

    .line 503
    iget-object v5, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->this$0:Lcom/games37/riversdk/core/view/MaterialDialog;

    move-object v4, p1

    check-cast v4, Landroid/widget/ListView;

    # invokes: Lcom/games37/riversdk/core/view/MaterialDialog;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    invoke-static {v5, v4}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$2400(Lcom/games37/riversdk/core/view/MaterialDialog;Landroid/widget/ListView;)V

    .line 505
    :cond_16
    iget-object v4, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    iget-object v5, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->this$0:Lcom/games37/riversdk/core/view/MaterialDialog;

    .line 506
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$200(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "ll_message_content_view"

    invoke-static {v5, v6}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 505
    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 507
    .local v3, "linearLayout":Landroid/widget/LinearLayout;
    if-eqz v3, :cond_32

    .line 508
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 509
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 511
    :cond_32
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_33
    if-eqz v3, :cond_55

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    :goto_39
    if-ge v1, v4, :cond_57

    .line 512
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/AutoCompleteTextView;

    if-eqz v4, :cond_52

    .line 514
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 515
    .local v0, "autoCompleteTextView":Landroid/widget/AutoCompleteTextView;
    invoke-virtual {v0, v7}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 516
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 517
    invoke-virtual {v0, v7}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 511
    .end local v0    # "autoCompleteTextView":Landroid/widget/AutoCompleteTextView;
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_55
    const/4 v4, 0x0

    goto :goto_39

    .line 520
    :cond_57
    return-void
.end method

.method public setMessage(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 386
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 387
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 389
    :cond_9
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 394
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    :cond_9
    return-void
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v3, -0x2

    const/4 v6, 0x0

    .line 427
    new-instance v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->this$0:Lcom/games37/riversdk/core/view/MaterialDialog;

    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$200(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 428
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 430
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    iget-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->this$0:Lcom/games37/riversdk/core/view/MaterialDialog;

    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$200(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "r1_baseview_material_card"

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 433
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 434
    const/16 v2, 0xde

    invoke-static {v2, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 435
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 436
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setGravity(I)V

    .line 437
    iget-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->this$0:Lcom/games37/riversdk/core/view/MaterialDialog;

    const/high16 v3, 0x41000000    # 8.0f

    # invokes: Lcom/games37/riversdk/core/view/MaterialDialog;->dip2px(F)I
    invoke-static {v2, v3}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$2200(Lcom/games37/riversdk/core/view/MaterialDialog;F)I

    move-result v2

    invoke-virtual {v0, v6, v6, v6, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 438
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    iget-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_69

    .line 440
    const/16 v2, 0x14

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->this$0:Lcom/games37/riversdk/core/view/MaterialDialog;

    const/high16 v5, 0x41100000    # 9.0f

    # invokes: Lcom/games37/riversdk/core/view/MaterialDialog;->dip2px(F)I
    invoke-static {v4, v5}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$2200(Lcom/games37/riversdk/core/view/MaterialDialog;F)I

    move-result v4

    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 441
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    iget-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 447
    :goto_68
    return-void

    .line 444
    :cond_69
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    iget-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_68
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v3, -0x2

    .line 405
    new-instance v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->this$0:Lcom/games37/riversdk/core/view/MaterialDialog;

    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$200(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 406
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 408
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    iget-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->this$0:Lcom/games37/riversdk/core/view/MaterialDialog;

    .line 410
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$200(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "r1_baseview_material_card"

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 409
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 411
    const/16 v2, 0xff

    const/16 v3, 0x23

    const/16 v4, 0x9f

    const/16 v5, 0xf2

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 412
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 413
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setGravity(I)V

    .line 414
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 415
    iget-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->this$0:Lcom/games37/riversdk/core/view/MaterialDialog;

    const/high16 v3, 0x41400000    # 12.0f

    # invokes: Lcom/games37/riversdk/core/view/MaterialDialog;->dip2px(F)I
    invoke-static {v2, v3}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$2200(Lcom/games37/riversdk/core/view/MaterialDialog;F)I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->this$0:Lcom/games37/riversdk/core/view/MaterialDialog;

    const/high16 v5, 0x42000000    # 32.0f

    # invokes: Lcom/games37/riversdk/core/view/MaterialDialog;->dip2px(F)I
    invoke-static {v4, v5}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$2200(Lcom/games37/riversdk/core/view/MaterialDialog;F)I

    move-result v4

    iget-object v5, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->this$0:Lcom/games37/riversdk/core/view/MaterialDialog;

    const/high16 v6, 0x41100000    # 9.0f

    # invokes: Lcom/games37/riversdk/core/view/MaterialDialog;->dip2px(F)I
    invoke-static {v5, v6}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$2200(Lcom/games37/riversdk/core/view/MaterialDialog;F)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 416
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v2, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 418
    return-void
.end method

.method public setTitle(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 373
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 375
    :cond_9
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 380
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    :cond_9
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    .line 451
    iget-object v6, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    iget-object v7, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->this$0:Lcom/games37/riversdk/core/view/MaterialDialog;

    .line 452
    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$200(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "ll_contentView"

    invoke-static {v7, v8}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 451
    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 453
    .local v1, "contentView":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 454
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 456
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    new-instance v6, Lcom/games37/riversdk/core/view/MaterialDialog$Builder$1;

    invoke-direct {v6, p0}, Lcom/games37/riversdk/core/view/MaterialDialog$Builder$1;-><init>(Lcom/games37/riversdk/core/view/MaterialDialog$Builder;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 471
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 473
    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_76

    move-object v5, p1

    .line 475
    check-cast v5, Landroid/view/ViewGroup;

    .line 477
    .local v5, "viewGroup":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_35
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_55

    .line 478
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_52

    .line 479
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 480
    .local v2, "editText":Landroid/widget/EditText;
    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 481
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 482
    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 477
    .end local v2    # "editText":Landroid/widget/EditText;
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 485
    :cond_55
    const/4 v3, 0x0

    :goto_56
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_76

    .line 486
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/AutoCompleteTextView;

    if-eqz v6, :cond_73

    .line 488
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 489
    .local v0, "autoCompleteTextView":Landroid/widget/AutoCompleteTextView;
    invoke-virtual {v0, v9}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 490
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 491
    invoke-virtual {v0, v9}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 485
    .end local v0    # "autoCompleteTextView":Landroid/widget/AutoCompleteTextView;
    :cond_73
    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    .line 495
    .end local v3    # "i":I
    .end local v5    # "viewGroup":Landroid/view/ViewGroup;
    :cond_76
    return-void
.end method
