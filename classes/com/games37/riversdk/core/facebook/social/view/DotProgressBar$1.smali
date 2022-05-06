.class Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;
.super Ljava/lang/Object;
.source "DotProgressBar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->updateProgressBarView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

.field final synthetic val$vtb:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;Landroid/view/ViewTreeObserver;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->val$vtb:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 27
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v20, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->mNumList:Ljava/util/List;
    invoke-static/range {v20 .. v20}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$000(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Ljava/util/List;

    move-result-object v20

    if-eqz v20, :cond_26a

    .line 69
    const/4 v15, 0x0

    .line 70
    .local v15, "reachDot":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v20, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->loadingViewBg:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$100(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    .line 71
    .local v4, "bgViewWith":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v20, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->reachView:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$200(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    .line 72
    .local v6, "dotViewWith":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v20, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->currentView:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$300(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    .line 73
    .local v5, "currentViewWith":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v20, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->reachText:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$400(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getWidth()I

    move-result v18

    .line 74
    .local v18, "reachTextWith":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v20, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->mNumList:Ljava/util/List;
    invoke-static/range {v20 .. v20}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$000(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v21, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->mNumList:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$000(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Double;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 75
    .local v10, "maxCount":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v20, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->mCurrentCount:D
    invoke-static/range {v20 .. v20}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$500(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)D

    move-result-wide v20

    div-double v16, v20, v10

    .line 76
    .local v16, "percent":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v20, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->loadingView:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$600(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 77
    .local v8, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    int-to-double v0, v4

    move-wide/from16 v20, v0

    mul-double v20, v20, v16

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v20, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->loadingView:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$600(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/widget/ImageView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v20, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->loadingView:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$600(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/widget/ImageView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v20, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->reachText:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$400(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/widget/TextView;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v22, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->mCurrentCount:D
    invoke-static/range {v22 .. v22}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$500(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\u4eba"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    int-to-double v0, v4

    move-wide/from16 v20, v0

    mul-double v20, v20, v16

    div-int/lit8 v22, v18, 0x2

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    add-double v12, v20, v22

    .line 82
    .local v12, "maxlength":D
    int-to-double v0, v4

    move-wide/from16 v20, v0

    cmpl-double v20, v12, v20

    if-ltz v20, :cond_1b6

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v20, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->reachText:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$400(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/widget/TextView;

    move-result-object v20

    sub-int v21, v4, v18

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setX(F)V

    .line 88
    :goto_10b
    const/4 v7, 0x0

    .line 89
    .local v7, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v20, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->mNumList:Ljava/util/List;
    invoke-static/range {v20 .. v20}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$000(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_11a
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_22f

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    .line 90
    .local v9, "num":Ljava/lang/Double;
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    add-double v24, v24, v10

    div-double v16, v22, v24

    .line 91
    new-instance v19, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v21, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$700(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 92
    .local v19, "unreachView":Landroid/widget/ImageView;
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v21, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->mCurrentCount:D
    invoke-static/range {v21 .. v21}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$500(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)D

    move-result-wide v24

    cmpg-double v21, v22, v24

    if-gez v21, :cond_1d8

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v21, v0

    .line 94
    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$700(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/content/Context;

    move-result-object v21

    const-string v22, "i1_sdk_fb_social_progressbar_dot_hover"

    invoke-static/range {v21 .. v22}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v21

    .line 93
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    :cond_16c
    :goto_16c
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 104
    .local v14, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v21, 0xf

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 106
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    int-to-double v0, v4

    move-wide/from16 v22, v0

    mul-double v22, v22, v16

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    div-int/lit8 v22, v6, 0x2

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v21, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->progressBarContainer:Landroid/widget/RelativeLayout;
    invoke-static/range {v21 .. v21}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$800(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/widget/RelativeLayout;

    move-result-object v21

    const/16 v22, 0x3

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    goto/16 :goto_11a

    .line 85
    .end local v7    # "i":I
    .end local v9    # "num":Ljava/lang/Double;
    .end local v14    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v19    # "unreachView":Landroid/widget/ImageView;
    :cond_1b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v20, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->reachText:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$400(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/widget/TextView;

    move-result-object v20

    int-to-double v0, v4

    move-wide/from16 v22, v0

    mul-double v22, v22, v16

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    div-int/lit8 v22, v18, 0x2

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setX(F)V

    goto/16 :goto_10b

    .line 95
    .restart local v7    # "i":I
    .restart local v9    # "num":Ljava/lang/Double;
    .restart local v19    # "unreachView":Landroid/widget/ImageView;
    :cond_1d8
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v21, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->mCurrentCount:D
    invoke-static/range {v21 .. v21}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$500(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)D

    move-result-wide v24

    cmpl-double v21, v22, v24

    if-lez v21, :cond_203

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v21, v0

    .line 97
    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$700(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/content/Context;

    move-result-object v21

    const-string v22, "i1_sdk_fb_social_progressbar_dot_unreach"

    invoke-static/range {v21 .. v22}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v21

    .line 96
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_16c

    .line 98
    :cond_203
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v21, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->mCurrentCount:D
    invoke-static/range {v21 .. v21}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$500(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)D

    move-result-wide v24

    cmpl-double v21, v22, v24

    if-nez v21, :cond_16c

    .line 99
    const/4 v15, 0x1

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v21, v0

    .line 101
    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$700(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/content/Context;

    move-result-object v21

    const-string v22, "i1_sdk_fb_social_progressbar_dot_hover"

    invoke-static/range {v21 .. v22}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v21

    .line 100
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_16c

    .line 111
    .end local v9    # "num":Ljava/lang/Double;
    .end local v19    # "unreachView":Landroid/widget/ImageView;
    :cond_22f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v20, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->mCurrentCount:D
    invoke-static/range {v20 .. v20}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$500(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-nez v20, :cond_26d

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v20, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->currentView:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$300(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/widget/ImageView;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v20, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->reachText:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$400(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/widget/TextView;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    :goto_25d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->val$vtb:Landroid/view/ViewTreeObserver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 125
    .end local v4    # "bgViewWith":I
    .end local v5    # "currentViewWith":I
    .end local v6    # "dotViewWith":I
    .end local v7    # "i":I
    .end local v8    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "maxCount":D
    .end local v12    # "maxlength":D
    .end local v15    # "reachDot":Z
    .end local v16    # "percent":D
    .end local v18    # "reachTextWith":I
    :cond_26a
    const/16 v20, 0x0

    return v20

    .line 115
    .restart local v4    # "bgViewWith":I
    .restart local v5    # "currentViewWith":I
    .restart local v6    # "dotViewWith":I
    .restart local v7    # "i":I
    .restart local v8    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v10    # "maxCount":D
    .restart local v12    # "maxlength":D
    .restart local v15    # "reachDot":Z
    .restart local v16    # "percent":D
    .restart local v18    # "reachTextWith":I
    :cond_26d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v20, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->mCurrentCount:D
    invoke-static/range {v20 .. v20}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$500(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)D

    move-result-wide v20

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    add-double v22, v22, v10

    div-double v16, v20, v22

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v20, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->currentView:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$300(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/widget/ImageView;

    move-result-object v20

    int-to-double v0, v4

    move-wide/from16 v22, v0

    mul-double v22, v22, v16

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    div-int/lit8 v22, v5, 0x2

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setX(F)V

    .line 117
    if-eqz v15, :cond_2af

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v20, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->currentView:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$300(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/widget/ImageView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_25d

    .line 120
    :cond_2af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    move-object/from16 v20, v0

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->currentView:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->access$300(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/widget/ImageView;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_25d
.end method
