.class public Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;
.super Landroid/widget/FrameLayout;
.source "CircleMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CLOSE:Ljava/lang/String; = "CLOSE"

.field public static final CLOSE_BG:Ljava/lang/String; = "CLOSE_BG"

.field public static final MENU_CONTAINER:Ljava/lang/String; = "MENU_CONTAINER"

.field private static OFFSET:F = 0.0f

.field public static final RED_POINT:Ljava/lang/String; = "RED_POINT"

.field public static final TAG:Ljava/lang/String; = "CircleMenu"

.field public static mRadius:F


# instance fields
.field private MENU_ITEM_MAX_SIZE:I

.field private SWEEP_ANGLE:F

.field private mCenterX:F

.field private mCenterY:F

.field private mCloseView:Landroid/widget/ImageView;

.field private mCloseViewBG:Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;

.field private mListener:Lcom/games37/riversdk/gm99/floatview/listener/OnMenuItemClickListener;

.field private mMenuInfoArrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuItemContainer:Landroid/widget/FrameLayout;

.field private mMenuStateChangeListener:Lcom/games37/riversdk/gm99/floatview/listener/OnMenuStateChangeListener;

.field private mPosition:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const/high16 v0, 0x43870000    # 270.0f

    sput v0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->OFFSET:F

    .line 56
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mRadius:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;F)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radius"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 107
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 61
    const/16 v0, 0x8

    iput v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->MENU_ITEM_MAX_SIZE:I

    .line 66
    const/16 v0, 0x168

    iget v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->MENU_ITEM_MAX_SIZE:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->SWEEP_ANGLE:F

    .line 75
    iput v3, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCenterX:F

    .line 80
    iput v3, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCenterY:F

    .line 84
    iput v4, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mPosition:I

    .line 108
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->setPadding(IIII)V

    .line 109
    invoke-virtual {p0, v2}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->setWillNotDraw(Z)V

    .line 110
    sput p2, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mRadius:F

    .line 112
    invoke-direct {p0, v4}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->initCenterPosition(I)V

    .line 113
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->init()V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuItemContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCloseView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;)Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCloseViewBG:Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;

    return-object v0
.end method

.method static synthetic access$300(Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;)Lcom/games37/riversdk/gm99/floatview/listener/OnMenuStateChangeListener;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuStateChangeListener:Lcom/games37/riversdk/gm99/floatview/listener/OnMenuStateChangeListener;

    return-object v0
.end method

.method private addClose(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x32

    .line 139
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCloseView:Landroid/widget/ImageView;

    .line 140
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCloseView:Landroid/widget/ImageView;

    const-string v2, "a1_sdk_floatview_close"

    invoke-static {p1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCloseView:Landroid/widget/ImageView;

    const-string v2, "CLOSE"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 143
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 144
    invoke-static {p1, v3}, Lcom/games37/riversdk/common/utils/DisPlayUtil;->toDp(Landroid/content/Context;I)I

    move-result v1

    .line 145
    invoke-static {p1, v3}, Lcom/games37/riversdk/common/utils/DisPlayUtil;->toDp(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 146
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCloseView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCloseView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCloseView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->addView(Landroid/view/View;)V

    .line 149
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->setVisibility(I)V

    .line 150
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->invalidate()V

    .line 151
    return-void
.end method

.method private addCloseBG(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x2

    .line 159
    new-instance v1, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;

    sget v2, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mRadius:F

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCenterX:F

    iget v4, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCenterY:F

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;-><init>(Landroid/content/Context;FFF)V

    iput-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCloseViewBG:Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;

    .line 160
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCloseViewBG:Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;

    const-string v2, "CLOSE_BG"

    invoke-virtual {v1, v2}, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->setTag(Ljava/lang/Object;)V

    .line 162
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 164
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCloseViewBG:Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;

    invoke-virtual {v1, v0}, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCloseViewBG:Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;

    invoke-virtual {v1}, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->invalidate()V

    .line 166
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCloseViewBG:Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->addView(Landroid/view/View;)V

    .line 167
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->setVisibility(I)V

    .line 168
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->invalidate()V

    .line 169
    return-void
.end method

.method private buildMenu(Ljava/util/List;F)V
    .registers 12
    .param p2, "offet"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;>;"
    const/4 v8, 0x0

    .line 301
    sget v5, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->OFFSET:F

    iget v6, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->SWEEP_ANGLE:F

    sub-float v3, v5, v6

    .line 303
    .local v3, "startAngle":F
    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuItemContainer:Landroid/widget/FrameLayout;

    sub-float v6, v3, p2

    iget v7, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->SWEEP_ANGLE:F

    invoke-direct {p0, v6, v7, v8}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->buildMenuItemView(FFLcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 304
    iget v5, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->SWEEP_ANGLE:F

    add-float/2addr v3, v5

    .line 307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_37

    .line 308
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;

    .line 309
    .local v1, "info":Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;
    sub-float v5, v3, p2

    iget v6, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->SWEEP_ANGLE:F

    invoke-direct {p0, v5, v6, v1}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->buildMenuItemView(FFLcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;)Landroid/view/View;

    move-result-object v4

    .line 310
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuItemContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 311
    iget v5, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->SWEEP_ANGLE:F

    add-float/2addr v3, v5

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 315
    .end local v1    # "info":Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;
    .end local v4    # "view":Landroid/view/View;
    :cond_37
    iget v5, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->MENU_ITEM_MAX_SIZE:I

    iget-object v6, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuItemContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v6

    sub-int v2, v5, v6

    .line 316
    .local v2, "last":I
    const/4 v0, 0x0

    :goto_42
    if-ge v0, v2, :cond_57

    .line 318
    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuItemContainer:Landroid/widget/FrameLayout;

    sub-float v6, v3, p2

    iget v7, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->SWEEP_ANGLE:F

    invoke-direct {p0, v6, v7, v8}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->buildMenuItemView(FFLcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 319
    iget v5, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->SWEEP_ANGLE:F

    add-float/2addr v3, v5

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 321
    :cond_57
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->requestLayout()V

    .line 322
    return-void
.end method

.method private buildMenuItemView(FFLcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;)Landroid/view/View;
    .registers 14
    .param p1, "startAngle"    # F
    .param p2, "sweepAngle"    # F
    .param p3, "menuFunctionInfo"    # Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;

    .prologue
    const/4 v9, -0x2

    .line 335
    const-string v2, "CircleMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildMenuItem name="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p3, :cond_4c

    const-string v1, "null"

    :goto_12
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " startAngle="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " sweepAngle="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;

    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mRadius:F

    iget v3, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCenterX:F

    iget v4, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCenterY:F

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;-><init>(Landroid/content/Context;FFFFFLcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;)V

    .line 344
    .local v0, "menuItemView":Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 346
    .local v8, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v8}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    return-object v0

    .line 335
    .end local v0    # "menuItemView":Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;
    .end local v8    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4c
    invoke-virtual {p3}, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;->getFUNCTION_NAME()Ljava/lang/String;

    move-result-object v1

    goto :goto_12
.end method

.method private getDefaultHeight()I
    .registers 2

    .prologue
    .line 235
    sget v0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mRadius:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private getDefaultWidth()I
    .registers 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuInfoArrayList:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuInfoArrayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_14

    .line 224
    sget v0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mRadius:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 226
    :goto_13
    return v0

    :cond_14
    sget v0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mRadius:F

    sget v1, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mRadius:F

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_13
.end method

.method private getSweepAngle(I)I
    .registers 4
    .param p1, "size"    # I

    .prologue
    .line 289
    const/4 v0, 0x5

    if-lt p1, v0, :cond_d

    const/16 v0, 0x8

    :goto_5
    iput v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->MENU_ITEM_MAX_SIZE:I

    .line 291
    const/16 v0, 0x168

    iget v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->MENU_ITEM_MAX_SIZE:I

    div-int/2addr v0, v1

    return v0

    .line 289
    :cond_d
    const/4 v0, 0x6

    goto :goto_5
.end method

.method private hideMenu()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 531
    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuItemContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    .line 533
    .local v2, "count":I
    const/4 v4, 0x0

    .line 534
    .local v4, "timeOffet":I
    move v3, v2

    .local v3, "i":I
    :goto_9
    if-lez v3, :cond_39

    .line 535
    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuItemContainer:Landroid/widget/FrameLayout;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 536
    .local v1, "childView":Landroid/view/View;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 538
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 540
    const-wide/16 v6, 0x96

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 542
    int-to-long v6, v4

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 544
    if-ne v3, v8, :cond_31

    .line 545
    new-instance v5, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu$1;

    invoke-direct {v5, p0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu$1;-><init>(Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 569
    :cond_31
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 570
    add-int/lit8 v4, v4, 0x32

    .line 534
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 572
    .end local v0    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "childView":Landroid/view/View;
    :cond_39
    return-void
.end method

.method private init()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 118
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuItemContainer:Landroid/widget/FrameLayout;

    .line 119
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 121
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuItemContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuItemContainer:Landroid/widget/FrameLayout;

    const-string v2, "MENU_CONTAINER"

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 123
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuItemContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 124
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->setVisibility(I)V

    .line 125
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuItemContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->addView(Landroid/view/View;)V

    .line 128
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->addCloseBG(Landroid/content/Context;)V

    .line 130
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->addClose(Landroid/content/Context;)V

    .line 131
    return-void
.end method

.method private initCenterPosition(I)V
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 178
    .local v1, "half_width":I
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 179
    .local v0, "half_height":I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_18

    .line 181
    div-int/lit8 v2, v1, 0x3

    int-to-float v2, v2

    iput v2, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCenterX:F

    .line 185
    :goto_14
    int-to-float v2, v0

    iput v2, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCenterY:F

    .line 186
    return-void

    .line 183
    :cond_18
    mul-int/lit8 v2, v1, 0x2

    div-int/lit8 v3, v1, 0x3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCenterX:F

    goto :goto_14
.end method

.method private selectArea(F)Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;
    .registers 9
    .param p1, "arg"    # F

    .prologue
    .line 621
    iget-object v6, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuItemContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    .line 622
    .local v0, "count":I
    const/4 v4, 0x0

    .line 623
    .local v4, "selectFunctionInfo":Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_28

    .line 625
    iget-object v6, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuItemContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;

    .line 627
    .local v3, "menuItemView":Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;
    invoke-virtual {v3}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->getStartAngle()F

    move-result v5

    .line 628
    .local v5, "startAngle":F
    invoke-virtual {v3}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->getSweepAngle()F

    move-result v6

    add-float v1, v5, v6

    .line 630
    .local v1, "endAngle":F
    cmpl-float v6, p1, v5

    if-ltz v6, :cond_29

    cmpg-float v6, p1, v1

    if-gez v6, :cond_29

    .line 631
    invoke-virtual {v3}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->getMenuFunctionInfo()Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;

    move-result-object v4

    .line 635
    .end local v1    # "endAngle":F
    .end local v3    # "menuItemView":Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;
    .end local v5    # "startAngle":F
    :cond_28
    return-object v4

    .line 623
    .restart local v1    # "endAngle":F
    .restart local v3    # "menuItemView":Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;
    .restart local v5    # "startAngle":F
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method private showMenu()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 499
    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuStateChangeListener:Lcom/games37/riversdk/gm99/floatview/listener/OnMenuStateChangeListener;

    if-eqz v5, :cond_a

    .line 500
    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuStateChangeListener:Lcom/games37/riversdk/gm99/floatview/listener/OnMenuStateChangeListener;

    invoke-interface {v5}, Lcom/games37/riversdk/gm99/floatview/listener/OnMenuStateChangeListener;->onMenushow()V

    .line 504
    :cond_a
    invoke-virtual {p0, v6}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->setVisibility(I)V

    .line 505
    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCloseView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 506
    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCloseViewBG:Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;

    invoke-virtual {v5, v6}, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->setVisibility(I)V

    .line 507
    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuItemContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 509
    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuItemContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    .line 511
    .local v2, "count":I
    const/4 v4, 0x0

    .line 512
    .local v4, "timeOffet":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_24
    if-ge v3, v2, :cond_49

    .line 514
    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuItemContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 515
    .local v1, "childView":Landroid/view/View;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 517
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 519
    const-wide/16 v6, 0x96

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 520
    int-to-long v6, v4

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 521
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 522
    add-int/lit8 v4, v4, 0x32

    .line 512
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 524
    .end local v0    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "childView":Landroid/view/View;
    :cond_49
    return-void
.end method

.method private updateMenuItemView(I)V
    .registers 15
    .param p1, "position"    # I

    .prologue
    const/4 v12, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 452
    iget-object v6, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuItemContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    .line 453
    .local v1, "count":I
    const-string v6, "CircleMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateMenuItemView count="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v6, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuInfoArrayList:Ljava/util/List;

    if-nez v6, :cond_96

    move v6, v7

    :goto_26
    invoke-direct {p0, v6}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->getSweepAngle(I)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->SWEEP_ANGLE:F

    .line 456
    const-string v6, "CircleMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateMenuItemView SWEEP_ANGLE="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->SWEEP_ANGLE:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    sget v6, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->OFFSET:F

    iget v9, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->SWEEP_ANGLE:F

    sub-float v5, v6, v9

    .line 460
    .local v5, "startAngle":F
    const/4 v4, 0x0

    .line 462
    .local v4, "isNeedCutItemHalfInY":Z
    const/4 v3, 0x0

    .line 464
    .local v3, "isNeedCutItemHalfInX":Z
    const-string v6, "CircleMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateMenuItemView startAngle="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_68
    if-ge v2, v1, :cond_be

    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, "child":Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;
    if-ne p1, v8, :cond_9f

    .line 469
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->getMenuItemCount()I

    move-result v6

    if-lt v6, v12, :cond_9d

    move v4, v8

    .line 470
    :goto_74
    iget-object v6, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuItemContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "child":Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;
    check-cast v0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;

    .line 476
    .restart local v0    # "child":Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;
    :goto_7c
    if-nez v4, :cond_80

    if-eqz v3, :cond_b4

    .line 477
    :cond_80
    iget v6, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCenterX:F

    iget v9, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCenterY:F

    iget v10, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->SWEEP_ANGLE:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float v10, v5, v10

    iget v11, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->SWEEP_ANGLE:F

    invoke-virtual {v0, v6, v9, v10, v11}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->updatePosition(FFFF)V

    .line 481
    :goto_90
    iget v6, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->SWEEP_ANGLE:F

    add-float/2addr v5, v6

    .line 465
    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    .line 455
    .end local v0    # "child":Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;
    .end local v2    # "i":I
    .end local v3    # "isNeedCutItemHalfInX":Z
    .end local v4    # "isNeedCutItemHalfInY":Z
    .end local v5    # "startAngle":F
    :cond_96
    iget-object v6, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuInfoArrayList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_26

    .restart local v0    # "child":Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;
    .restart local v2    # "i":I
    .restart local v3    # "isNeedCutItemHalfInX":Z
    .restart local v4    # "isNeedCutItemHalfInY":Z
    .restart local v5    # "startAngle":F
    :cond_9d
    move v4, v7

    .line 469
    goto :goto_74

    .line 473
    :cond_9f
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->getMenuItemCount()I

    move-result v6

    if-ne v6, v12, :cond_b2

    move v3, v7

    .line 474
    :goto_a6
    iget-object v6, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuItemContainer:Landroid/widget/FrameLayout;

    add-int/lit8 v9, v1, -0x1

    sub-int/2addr v9, v2

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "child":Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;
    check-cast v0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;

    .restart local v0    # "child":Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;
    goto :goto_7c

    :cond_b2
    move v3, v8

    .line 473
    goto :goto_a6

    .line 479
    :cond_b4
    iget v6, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCenterX:F

    iget v9, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCenterY:F

    iget v10, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->SWEEP_ANGLE:F

    invoke-virtual {v0, v6, v9, v5, v10}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->updatePosition(FFFF)V

    goto :goto_90

    .line 483
    .end local v0    # "child":Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;
    :cond_be
    return-void
.end method

.method private updateOffetAngle(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 429
    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    .line 431
    const/high16 v1, 0x43870000    # 270.0f

    sput v1, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->OFFSET:F

    .line 443
    :goto_7
    return-void

    .line 434
    :cond_8
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->getMenuItemCount()I

    move-result v0

    .line 440
    .local v0, "count":I
    iget v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->SWEEP_ANGLE:F

    sput v1, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->OFFSET:F

    goto :goto_7
.end method

.method private whichSector(DD)Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;
    .registers 12
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    const/high16 v6, 0x43b40000    # 360.0f

    .line 602
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-float v0, v2

    .line 603
    .local v0, "arg":F
    iget v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mPosition:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3a

    .line 605
    add-float/2addr v0, v6

    .line 609
    :goto_1d
    const-string v1, "CircleMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "whichSector arg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-direct {p0, v0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->selectArea(F)Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;

    move-result-object v1

    return-object v1

    .line 607
    :cond_3a
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_40

    add-float/2addr v0, v6

    :cond_40
    goto :goto_1d
.end method


# virtual methods
.method public addMenuItem(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;>;"
    if-eqz p1, :cond_22

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_22

    .line 269
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuInfoArrayList:Ljava/util/List;

    .line 271
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuInfoArrayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 272
    .local v0, "size":I
    invoke-direct {p0, v0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->getSweepAngle(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->SWEEP_ANGLE:F

    .line 273
    const/4 v1, 0x4

    if-lt v0, v1, :cond_23

    .line 275
    iget v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->SWEEP_ANGLE:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-direct {p0, p1, v1}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->buildMenu(Ljava/util/List;F)V

    .line 280
    .end local v0    # "size":I
    :cond_22
    :goto_22
    return-void

    .line 277
    .restart local v0    # "size":I
    :cond_23
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->buildMenu(Ljava/util/List;F)V

    goto :goto_22
.end method

.method public getMenuItemCount()I
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuInfoArrayList:Ljava/util/List;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuInfoArrayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 357
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuInfoArrayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 359
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public hide()V
    .registers 1

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->hideMenu()V

    .line 375
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mListener:Lcom/games37/riversdk/gm99/floatview/listener/OnMenuItemClickListener;

    if-eqz v0, :cond_1c

    .line 488
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCloseView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 489
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mListener:Lcom/games37/riversdk/gm99/floatview/listener/OnMenuItemClickListener;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCloseView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/games37/riversdk/gm99/floatview/listener/OnMenuItemClickListener;->onMenuItemClick(Ljava/lang/String;Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;)V

    .line 492
    :cond_1c
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 16
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 240
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 242
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->getChildCount()I

    move-result v5

    .line 243
    .local v5, "count":I
    const/4 v8, 0x1

    if-ge v5, v8, :cond_b

    .line 260
    :cond_a
    :goto_a
    return-void

    .line 248
    :cond_b
    const-string v8, "CLOSE"

    invoke-virtual {p0, v8}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 249
    .local v4, "close":Landroid/view/View;
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_a

    .line 250
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 251
    .local v7, "width":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 252
    .local v6, "height":I
    const/4 v1, 0x0

    .local v1, "childLeft":I
    const/4 v3, 0x0

    .local v3, "childTop":I
    const/4 v2, 0x0

    .local v2, "childRight":I
    const/4 v0, 0x0

    .line 254
    .local v0, "childBottom":I
    iget v8, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCenterX:F

    float-to-int v8, v8

    div-int/lit8 v9, v7, 0x2

    sub-int v1, v8, v9

    .line 255
    iget v8, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCenterY:F

    float-to-int v8, v8

    div-int/lit8 v9, v6, 0x2

    sub-int v3, v8, v9

    .line 256
    iget v8, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCenterX:F

    float-to-int v8, v8

    div-int/lit8 v9, v7, 0x2

    add-int v2, v8, v9

    .line 257
    iget v8, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCenterY:F

    float-to-int v8, v8

    div-int/lit8 v9, v6, 0x2

    add-int v0, v8, v9

    .line 258
    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_a
.end method

.method protected onMeasure(II)V
    .registers 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, -0x2

    .line 190
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 193
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 194
    .local v4, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 197
    .local v5, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 198
    .local v0, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 202
    .local v1, "heightSize":I
    sget v6, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mRadius:F

    sget v7, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mRadius:F

    const/high16 v8, 0x40400000    # 3.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 203
    .local v3, "mWidth":I
    sget v6, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mRadius:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v2, v6, 0xa

    .line 206
    .local v2, "mHeight":I
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v6, v9, :cond_3e

    .line 207
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v6, v9, :cond_3e

    .line 208
    invoke-virtual {p0, v3, v2}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->setMeasuredDimension(II)V

    .line 215
    :cond_3d
    :goto_3d
    return-void

    .line 210
    :cond_3e
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v6, v9, :cond_4a

    .line 211
    invoke-virtual {p0, v3, v1}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->setMeasuredDimension(II)V

    goto :goto_3d

    .line 212
    :cond_4a
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v6, v9, :cond_3d

    .line 213
    invoke-virtual {p0, v5, v2}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->setMeasuredDimension(II)V

    goto :goto_3d
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 576
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_2e

    .line 591
    :cond_7
    :goto_7
    :pswitch_7
    const/4 v1, 0x1

    return v1

    .line 583
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCenterX:F

    sub-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v4, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCenterY:F

    sub-float/2addr v1, v4

    float-to-double v4, v1

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->whichSector(DD)Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;

    move-result-object v0

    .line 584
    .local v0, "menuFunctionInfo":Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mListener:Lcom/games37/riversdk/gm99/floatview/listener/OnMenuItemClickListener;

    if-eqz v1, :cond_7

    .line 585
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mListener:Lcom/games37/riversdk/gm99/floatview/listener/OnMenuItemClickListener;

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;->getFUNCTION_NAME()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/games37/riversdk/gm99/floatview/listener/OnMenuItemClickListener;->onMenuItemClick(Ljava/lang/String;Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;)V

    goto :goto_7

    .line 576
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_7
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method

.method public setMenuStateChangeListener(Lcom/games37/riversdk/gm99/floatview/listener/OnMenuStateChangeListener;)V
    .registers 2
    .param p1, "menuStateChangeListener"    # Lcom/games37/riversdk/gm99/floatview/listener/OnMenuStateChangeListener;

    .prologue
    .line 645
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuStateChangeListener:Lcom/games37/riversdk/gm99/floatview/listener/OnMenuStateChangeListener;

    .line 646
    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/games37/riversdk/gm99/floatview/listener/OnMenuItemClickListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/games37/riversdk/gm99/floatview/listener/OnMenuItemClickListener;

    .prologue
    .line 639
    if-eqz p1, :cond_4

    .line 640
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mListener:Lcom/games37/riversdk/gm99/floatview/listener/OnMenuItemClickListener;

    .line 642
    :cond_4
    return-void
.end method

.method public setRedPointState(Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;)V
    .registers 9
    .param p1, "menuFunctionInfo"    # Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;

    .prologue
    const/4 v4, 0x0

    .line 384
    if-nez p1, :cond_4

    .line 401
    :cond_3
    :goto_3
    return-void

    .line 387
    :cond_4
    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuItemContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;->getFUNCTION_NAME()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 389
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_3

    instance-of v5, v2, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    move-object v3, v2

    .line 392
    check-cast v3, Landroid/view/ViewGroup;

    .line 394
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    const-string v5, "RED_POINT"

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 395
    .local v1, "red_point":Landroid/view/View;
    const-string v5, "1"

    invoke-virtual {p1}, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;->getHAS_RED_POINT()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/4 v0, 0x1

    .line 396
    .local v0, "hasRedPoint":Z
    :goto_2a
    if-eqz v0, :cond_32

    .line 397
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .end local v0    # "hasRedPoint":Z
    :cond_30
    move v0, v4

    .line 395
    goto :goto_2a

    .line 399
    .restart local v0    # "hasRedPoint":Z
    :cond_32
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public show()V
    .registers 1

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->showMenu()V

    .line 368
    return-void
.end method

.method public updatePosition(I)V
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->initCenterPosition(I)V

    .line 412
    invoke-direct {p0, p1}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->updateOffetAngle(I)V

    .line 414
    invoke-direct {p0, p1}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->updateMenuItemView(I)V

    .line 416
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCloseViewBG:Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;

    if-eqz v0, :cond_16

    .line 417
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCloseViewBG:Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;

    iget v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCenterX:F

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCenterY:F

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->updatePisition(FF)V

    .line 419
    :cond_16
    iput p1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mPosition:I

    .line 420
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->requestLayout()V

    .line 421
    return-void
.end method
