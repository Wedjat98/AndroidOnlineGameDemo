.class public Lcom/games37/riversdk/core/view/MaterialDialog;
.super Ljava/lang/Object;
.source "MaterialDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/core/view/MaterialDialog$Builder;
    }
.end annotation


# static fields
.field private static final BUTTON_BOTTOM:I = 0x9

.field private static final BUTTON_TOP:I = 0x9


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResId:I

.field private mBuilder:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

.field private mCancel:Z

.field private mContext:Landroid/content/Context;

.field private mHasShow:Z

.field private mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageContentView:Landroid/view/View;

.field private mMessageContentViewResId:I

.field private mMessageResId:I

.field private mNegativeButton:Landroid/widget/Button;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPositiveButton:Landroid/widget/Button;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleResId:I

.field private mView:Landroid/view/View;

.field private nId:I

.field nListener:Landroid/view/View$OnClickListener;

.field private nText:Ljava/lang/String;

.field private pId:I

.field pListener:Landroid/view/View$OnClickListener;

.field private pText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mHasShow:Z

    .line 51
    iput v1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBackgroundResId:I

    .line 56
    iput v1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->pId:I

    iput v1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->nId:I

    .line 62
    iput-object p1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method static synthetic access$100(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/games37/riversdk/core/view/MaterialDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;

    .prologue
    .line 33
    iget v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->pId:I

    return v0
.end method

.method static synthetic access$102(Lcom/games37/riversdk/core/view/MaterialDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1100()Z
    .registers 1

    .prologue
    .line 33
    invoke-static {}, Lcom/games37/riversdk/core/view/MaterialDialog;->isLollipop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/games37/riversdk/core/view/MaterialDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;

    .prologue
    .line 33
    iget v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->nId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/games37/riversdk/core/view/MaterialDialog;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->pText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/games37/riversdk/core/view/MaterialDialog;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/games37/riversdk/core/view/MaterialDialog;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->nText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/games37/riversdk/core/view/MaterialDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;

    .prologue
    .line 33
    iget v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBackgroundResId:I

    return v0
.end method

.method static synthetic access$1700(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mMessageContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/games37/riversdk/core/view/MaterialDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;

    .prologue
    .line 33
    iget v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mMessageContentViewResId:I

    return v0
.end method

.method static synthetic access$200(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/games37/riversdk/core/view/MaterialDialog;)Z
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mCancel:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/DialogInterface$OnDismissListener;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/games37/riversdk/core/view/MaterialDialog;F)I
    .registers 3
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;
    .param p1, "x1"    # F

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->dip2px(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/games37/riversdk/core/view/MaterialDialog;Landroid/widget/ListView;)V
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mPositiveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$302(Lcom/games37/riversdk/core/view/MaterialDialog;Landroid/widget/Button;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mPositiveButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$400(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mNegativeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$402(Lcom/games37/riversdk/core/view/MaterialDialog;Landroid/widget/Button;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mNegativeButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$500(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/games37/riversdk/core/view/MaterialDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;

    .prologue
    .line 33
    iget v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mTitleResId:I

    return v0
.end method

.method static synthetic access$700(Lcom/games37/riversdk/core/view/MaterialDialog;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$800(Lcom/games37/riversdk/core/view/MaterialDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;

    .prologue
    .line 33
    iget v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mMessageResId:I

    return v0
.end method

.method static synthetic access$900(Lcom/games37/riversdk/core/view/MaterialDialog;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/MaterialDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private dip2px(F)I
    .registers 5
    .param p1, "dpValue"    # F

    .prologue
    .line 137
    iget-object v1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 138
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private static isLollipop()Z
    .registers 2

    .prologue
    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isNullOrEmpty(Ljava/lang/String;)Z
    .registers 3
    .param p1, "nText"    # Ljava/lang/String;

    .prologue
    .line 560
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .registers 9
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v6, 0x0

    .line 565
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 566
    .local v1, "listAdapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_8

    .line 581
    :goto_7
    return-void

    .line 571
    :cond_8
    const/4 v4, 0x0

    .line 572
    .local v4, "totalHeight":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_20

    .line 573
    const/4 v5, 0x0

    invoke-interface {v1, v0, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 574
    .local v2, "listItem":Landroid/view/View;
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 575
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 578
    .end local v2    # "listItem":Landroid/view/View;
    :cond_20
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 579
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v5

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v5, v4

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 580
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/CommonUtils;->dismissWithCheck(Landroid/app/Dialog;)V

    .line 133
    return-void
.end method

.method public getNegativeButton()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mNegativeButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPositiveButton()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mPositiveButton:Landroid/widget/Button;

    return-object v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)Lcom/games37/riversdk/core/view/MaterialDialog;
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 115
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBuilder:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    if-eqz v0, :cond_d

    .line 116
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBuilder:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    iget-object v1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 118
    :cond_d
    return-object p0
.end method

.method public setBackgroundResource(I)Lcom/games37/riversdk/core/view/MaterialDialog;
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBackgroundResId:I

    .line 124
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBuilder:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    if-eqz v0, :cond_d

    .line 125
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBuilder:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    iget v1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBackgroundResId:I

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->setBackgroundResource(I)V

    .line 127
    :cond_d
    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/games37/riversdk/core/view/MaterialDialog;
    .registers 4
    .param p1, "cancel"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mCancel:Z

    .line 232
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBuilder:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    if-eqz v0, :cond_d

    .line 233
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBuilder:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    iget-boolean v1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mCancel:Z

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->setCanceledOnTouchOutside(Z)V

    .line 235
    :cond_d
    return-object p0
.end method

.method public setContentView(I)Lcom/games37/riversdk/core/view/MaterialDialog;
    .registers 3
    .param p1, "layoutResId"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mMessageContentViewResId:I

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mMessageContentView:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBuilder:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    if-eqz v0, :cond_e

    .line 107
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBuilder:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->setContentView(I)V

    .line 109
    :cond_e
    return-object p0
.end method

.method public setContentView(Landroid/view/View;)Lcom/games37/riversdk/core/view/MaterialDialog;
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mMessageContentView:Landroid/view/View;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mMessageContentViewResId:I

    .line 91
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBuilder:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    if-eqz v0, :cond_10

    .line 92
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBuilder:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    iget-object v1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mMessageContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->setContentView(Landroid/view/View;)V

    .line 94
    :cond_10
    return-object p0
.end method

.method public setMessage(I)Lcom/games37/riversdk/core/view/MaterialDialog;
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mMessageResId:I

    .line 167
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBuilder:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    if-eqz v0, :cond_b

    .line 168
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBuilder:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->setMessage(I)V

    .line 170
    :cond_b
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/games37/riversdk/core/view/MaterialDialog;
    .registers 3
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mMessage:Ljava/lang/CharSequence;

    .line 176
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBuilder:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    if-eqz v0, :cond_b

    .line 177
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBuilder:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->setMessage(Ljava/lang/CharSequence;)V

    .line 179
    :cond_b
    return-object p0
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/games37/riversdk/core/view/MaterialDialog;
    .registers 3
    .param p1, "resId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 208
    iput p1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->nId:I

    .line 209
    iput-object p2, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->nListener:Landroid/view/View$OnClickListener;

    .line 210
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/games37/riversdk/core/view/MaterialDialog;
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->nText:Ljava/lang/String;

    .line 216
    iput-object p2, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->nListener:Landroid/view/View$OnClickListener;

    .line 217
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/games37/riversdk/core/view/MaterialDialog;
    .registers 2
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 241
    return-object p0
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/games37/riversdk/core/view/MaterialDialog;
    .registers 3
    .param p1, "resId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 184
    iput p1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->pId:I

    .line 185
    iput-object p2, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->pListener:Landroid/view/View$OnClickListener;

    .line 186
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/games37/riversdk/core/view/MaterialDialog;
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->pText:Ljava/lang/String;

    .line 202
    iput-object p2, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->pListener:Landroid/view/View$OnClickListener;

    .line 203
    return-object p0
.end method

.method public setTitle(I)Lcom/games37/riversdk/core/view/MaterialDialog;
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mTitleResId:I

    .line 149
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBuilder:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    if-eqz v0, :cond_b

    .line 150
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBuilder:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->setTitle(I)V

    .line 152
    :cond_b
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/games37/riversdk/core/view/MaterialDialog;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mTitle:Ljava/lang/CharSequence;

    .line 158
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBuilder:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    if-eqz v0, :cond_b

    .line 159
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBuilder:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->setTitle(Ljava/lang/CharSequence;)V

    .line 161
    :cond_b
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/games37/riversdk/core/view/MaterialDialog;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mView:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBuilder:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    if-eqz v0, :cond_b

    .line 82
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBuilder:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->setView(Landroid/view/View;)V

    .line 84
    :cond_b
    return-object p0
.end method

.method public show()V
    .registers 4

    .prologue
    .line 67
    iget-boolean v1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mHasShow:Z

    if-nez v1, :cond_10

    .line 68
    new-instance v1, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;-><init>(Lcom/games37/riversdk/core/view/MaterialDialog;Lcom/games37/riversdk/core/view/MaterialDialog$1;)V

    iput-object v1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mBuilder:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    .line 75
    :cond_c
    :goto_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mHasShow:Z

    .line 76
    return-void

    .line 70
    :cond_10
    iget-object v0, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 71
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 72
    iget-object v1, p0, Lcom/games37/riversdk/core/view/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_c
.end method
