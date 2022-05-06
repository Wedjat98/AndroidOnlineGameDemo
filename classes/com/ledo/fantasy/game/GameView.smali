.class public Lcom/ledo/fantasy/game/GameView;
.super Landroid/opengl/GLSurfaceView;
.source "GameView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ledo/fantasy/game/GameView$GameViewHandler;
    }
.end annotation


# static fields
.field private static final HANDLER_CLOSE_IME_KEYBOARD:I = 0x3

.field private static final HANDLER_OPEN_IME_KEYBOARD:I = 0x2

.field static Myimm:Landroid/view/inputmethod/InputMethodManager;

.field private static TAG:Ljava/lang/String;

.field static key:I

.field private static mIceFireGLSurfaceView:Lcom/ledo/fantasy/game/GameView;

.field private static sCocos2dxTextInputWraper:Lcom/ledo/fantasy/game/IcefireTextInputWraper;

.field private static sHandler:Lcom/ledo/fantasy/game/GameView$GameViewHandler;


# instance fields
.field private mCocos2dxEditText:Lcom/ledo/fantasy/game/IcefireEditText;

.field public mlordrender:Lcom/ledo/fantasy/game/LordRender;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-string v0, "GameView"

    sput-object v0, Lcom/ledo/fantasy/game/GameView;->TAG:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 69
    const/16 v0, 0x18

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/ledo/fantasy/game/GameView;->init(Landroid/content/Context;II)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "depth"    # I
    .param p3, "stencil"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/ledo/fantasy/game/GameView;->init(Landroid/content/Context;II)V

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/ledo/fantasy/game/GameView;)Lcom/ledo/fantasy/game/IcefireEditText;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ledo/fantasy/game/GameView;->mCocos2dxEditText:Lcom/ledo/fantasy/game/IcefireEditText;

    return-object v0
.end method

.method static synthetic access$1()Lcom/ledo/fantasy/game/IcefireTextInputWraper;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/ledo/fantasy/game/GameView;->sCocos2dxTextInputWraper:Lcom/ledo/fantasy/game/IcefireTextInputWraper;

    return-object v0
.end method

.method static synthetic access$2()Lcom/ledo/fantasy/game/GameView;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/ledo/fantasy/game/GameView;->mIceFireGLSurfaceView:Lcom/ledo/fantasy/game/GameView;

    return-object v0
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .registers 8
    .param p0, "prompt"    # Ljava/lang/String;
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;

    .prologue
    .line 164
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .local v0, "error":I
    const/16 v1, 0x3000

    if-ne v0, v1, :cond_9

    .line 167
    return-void

    .line 165
    :cond_9
    sget-object v1, Lcom/ledo/fantasy/game/GameView;->TAG:Ljava/lang/String;

    const-string v2, "%s: EGL error: 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static closeIMEKeyboard()V
    .registers 2

    .prologue
    .line 301
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 302
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 303
    sget-object v1, Lcom/ledo/fantasy/game/GameView;->sHandler:Lcom/ledo/fantasy/game/GameView$GameViewHandler;

    invoke-virtual {v1, v0}, Lcom/ledo/fantasy/game/GameView$GameViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 304
    return-void
.end method

.method private getContentText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 272
    const-string v0, ""

    return-object v0
.end method

.method private init(Landroid/content/Context;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "depth"    # I
    .param p3, "stencil"    # I

    .prologue
    .line 140
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/ledo/fantasy/game/GameView;->setEGLContextClientVersion(I)V

    .line 142
    sput-object p0, Lcom/ledo/fantasy/game/GameView;->mIceFireGLSurfaceView:Lcom/ledo/fantasy/game/GameView;

    .line 143
    new-instance v0, Lcom/ledo/fantasy/game/IcefireTextInputWraper;

    invoke-direct {v0, p0}, Lcom/ledo/fantasy/game/IcefireTextInputWraper;-><init>(Lcom/ledo/fantasy/game/GameView;)V

    sput-object v0, Lcom/ledo/fantasy/game/GameView;->sCocos2dxTextInputWraper:Lcom/ledo/fantasy/game/IcefireTextInputWraper;

    .line 144
    new-instance v0, Lcom/ledo/fantasy/game/GameView$GameViewHandler;

    invoke-direct {v0, p0}, Lcom/ledo/fantasy/game/GameView$GameViewHandler;-><init>(Lcom/ledo/fantasy/game/GameView;)V

    sput-object v0, Lcom/ledo/fantasy/game/GameView;->sHandler:Lcom/ledo/fantasy/game/GameView$GameViewHandler;

    .line 145
    return-void
.end method

.method public static openIMEKeyboard()V
    .registers 2

    .prologue
    .line 294
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 295
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 296
    sget-object v1, Lcom/ledo/fantasy/game/GameView;->mIceFireGLSurfaceView:Lcom/ledo/fantasy/game/GameView;

    invoke-direct {v1}, Lcom/ledo/fantasy/game/GameView;->getContentText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 297
    sget-object v1, Lcom/ledo/fantasy/game/GameView;->sHandler:Lcom/ledo/fantasy/game/GameView$GameViewHandler;

    invoke-virtual {v1, v0}, Lcom/ledo/fantasy/game/GameView$GameViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 298
    return-void
.end method


# virtual methods
.method public deleteBackward()V
    .registers 2

    .prologue
    .line 285
    new-instance v0, Lcom/ledo/fantasy/game/GameView$8;

    invoke-direct {v0, p0}, Lcom/ledo/fantasy/game/GameView$8;-><init>(Lcom/ledo/fantasy/game/GameView;)V

    invoke-virtual {p0, v0}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 291
    return-void
.end method

.method public getIcefireEditText()Lcom/ledo/fantasy/game/IcefireEditText;
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/ledo/fantasy/game/GameView;->mCocos2dxEditText:Lcom/ledo/fantasy/game/IcefireEditText;

    return-object v0
.end method

.method public hasIcefireEditText()Z
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/ledo/fantasy/game/GameView;->mCocos2dxEditText:Lcom/ledo/fantasy/game/IcefireEditText;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasLordRenderer()Z
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ledo/fantasy/game/GameView;->mlordrender:Lcom/ledo/fantasy/game/LordRender;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public insertText(Ljava/lang/String;)V
    .registers 3
    .param p1, "pText"    # Ljava/lang/String;

    .prologue
    .line 276
    new-instance v0, Lcom/ledo/fantasy/game/GameView$7;

    invoke-direct {v0, p0, p1}, Lcom/ledo/fantasy/game/GameView$7;-><init>(Lcom/ledo/fantasy/game/GameView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 282
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    .prologue
    .line 93
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onAttachedToWindow()V

    .line 94
    sget-object v0, Lcom/ledo/fantasy/game/GameView;->TAG:Ljava/lang/String;

    const-string v1, "GameView onAttachedToWindow called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 101
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 102
    sget-object v0, Lcom/ledo/fantasy/game/GameView;->TAG:Ljava/lang/String;

    const-string v1, "GameView onDetachedFromWindow called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 36
    .param p1, "pMotionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 172
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .line 173
    .local v9, "pointerNumber":I
    new-array v0, v9, [I

    move-object/from16 v17, v0

    .line 174
    .local v17, "ids":[I
    new-array v0, v9, [F

    move-object/from16 v18, v0

    .line 175
    .local v18, "xs":[F
    new-array v0, v9, [F

    move-object/from16 v19, v0

    .line 177
    .local v19, "ys":[F
    const/16 v31, 0x0

    .local v31, "i":I
    :goto_12
    move/from16 v0, v31

    if-lt v0, v9, :cond_21

    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_104

    .line 266
    :goto_1f
    :pswitch_1f
    const/4 v4, 0x1

    return v4

    .line 178
    :cond_21
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    aput v4, v17, v31

    .line 179
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aput v4, v18, v31

    .line 180
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    aput v4, v19, v31

    .line 177
    add-int/lit8 v31, v31, 0x1

    goto :goto_12

    .line 185
    :pswitch_42
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    shr-int/lit8 v33, v4, 0x8

    .line 186
    .local v33, "indexPointerDown":I
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 187
    .local v6, "idPointerDown":I
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 188
    .local v7, "xPointerDown":F
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 190
    .local v8, "yPointerDown":F
    new-instance v4, Lcom/ledo/fantasy/game/GameView$1;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/ledo/fantasy/game/GameView$1;-><init>(Lcom/ledo/fantasy/game/GameView;IFFI)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1f

    .line 200
    .end local v6    # "idPointerDown":I
    .end local v7    # "xPointerDown":F
    .end local v8    # "yPointerDown":F
    .end local v33    # "indexPointerDown":I
    :pswitch_6d
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    .line 201
    .local v12, "idDown":I
    const/4 v4, 0x0

    aget v13, v18, v4

    .line 202
    .local v13, "xDown":F
    const/4 v4, 0x0

    aget v14, v19, v4

    .line 204
    .local v14, "yDown":F
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v4

    float-to-int v5, v13

    float-to-int v10, v14

    invoke-virtual {v4, v5, v10}, Lcom/ledo/fantasy/game/GameApp;->touchBegin(II)V

    .line 206
    new-instance v10, Lcom/ledo/fantasy/game/GameView$2;

    move-object/from16 v11, p0

    move v15, v9

    invoke-direct/range {v10 .. v15}, Lcom/ledo/fantasy/game/GameView$2;-><init>(Lcom/ledo/fantasy/game/GameView;IFFI)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1f

    .line 215
    .end local v12    # "idDown":I
    .end local v13    # "xDown":F
    .end local v14    # "yDown":F
    :pswitch_91
    new-instance v15, Lcom/ledo/fantasy/game/GameView$3;

    move-object/from16 v16, p0

    move/from16 v20, v9

    invoke-direct/range {v15 .. v20}, Lcom/ledo/fantasy/game/GameView$3;-><init>(Lcom/ledo/fantasy/game/GameView;[I[F[FI)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1f

    .line 224
    :pswitch_a0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    shr-int/lit8 v32, v4, 0x8

    .line 225
    .local v32, "indexPointUp":I
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v22

    .line 226
    .local v22, "idPointerUp":I
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v23

    .line 227
    .local v23, "xPointerUp":F
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v24

    .line 229
    .local v24, "yPointerUp":F
    new-instance v20, Lcom/ledo/fantasy/game/GameView$4;

    move-object/from16 v21, p0

    move/from16 v25, v9

    invoke-direct/range {v20 .. v25}, Lcom/ledo/fantasy/game/GameView$4;-><init>(Lcom/ledo/fantasy/game/GameView;IFFI)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_1f

    .line 239
    .end local v22    # "idPointerUp":I
    .end local v23    # "xPointerUp":F
    .end local v24    # "yPointerUp":F
    .end local v32    # "indexPointUp":I
    :pswitch_d0
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    .line 240
    .local v27, "idUp":I
    const/4 v4, 0x0

    aget v28, v18, v4

    .line 241
    .local v28, "xUp":F
    const/4 v4, 0x0

    aget v29, v19, v4

    .line 243
    .local v29, "yUp":F
    new-instance v25, Lcom/ledo/fantasy/game/GameView$5;

    move-object/from16 v26, p0

    move/from16 v30, v9

    invoke-direct/range {v25 .. v30}, Lcom/ledo/fantasy/game/GameView$5;-><init>(Lcom/ledo/fantasy/game/GameView;IFFI)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_1f

    .line 252
    .end local v27    # "idUp":I
    .end local v28    # "xUp":F
    .end local v29    # "yUp":F
    :pswitch_ef
    new-instance v4, Lcom/ledo/fantasy/game/GameView$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/ledo/fantasy/game/GameView$6;-><init>(Lcom/ledo/fantasy/game/GameView;[I[F[F)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_1f

    .line 183
    nop

    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_d0
        :pswitch_91
        :pswitch_ef
        :pswitch_1f
        :pswitch_42
        :pswitch_a0
    .end packed-switch
.end method

.method public onWindowVisibilityChanged(I)V
    .registers 4
    .param p1, "visibility"    # I

    .prologue
    .line 85
    sget-object v0, Lcom/ledo/fantasy/game/GameView;->TAG:Ljava/lang/String;

    const-string v1, "GameView onWindowVisibilityChanged called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onWindowVisibilityChanged(I)V

    .line 90
    return-void
.end method

.method public setIcefireEditText(Lcom/ledo/fantasy/game/IcefireEditText;)V
    .registers 4
    .param p1, "pIcefireEditText"    # Lcom/ledo/fantasy/game/IcefireEditText;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/ledo/fantasy/game/GameView;->mCocos2dxEditText:Lcom/ledo/fantasy/game/IcefireEditText;

    .line 154
    iget-object v0, p0, Lcom/ledo/fantasy/game/GameView;->mCocos2dxEditText:Lcom/ledo/fantasy/game/IcefireEditText;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/ledo/fantasy/game/GameView;->sCocos2dxTextInputWraper:Lcom/ledo/fantasy/game/IcefireTextInputWraper;

    if-eqz v0, :cond_19

    .line 155
    iget-object v0, p0, Lcom/ledo/fantasy/game/GameView;->mCocos2dxEditText:Lcom/ledo/fantasy/game/IcefireEditText;

    sget-object v1, Lcom/ledo/fantasy/game/GameView;->sCocos2dxTextInputWraper:Lcom/ledo/fantasy/game/IcefireTextInputWraper;

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/IcefireEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 156
    iget-object v0, p0, Lcom/ledo/fantasy/game/GameView;->mCocos2dxEditText:Lcom/ledo/fantasy/game/IcefireEditText;

    invoke-virtual {v0, p0}, Lcom/ledo/fantasy/game/IcefireEditText;->setIcefireGLSurfaceView(Lcom/ledo/fantasy/game/GameView;)V

    .line 157
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/GameView;->requestFocus()Z

    .line 159
    :cond_19
    return-void
.end method

.method public setLordRenderer(Lcom/ledo/fantasy/game/LordRender;)V
    .registers 3
    .param p1, "r"    # Lcom/ledo/fantasy/game/LordRender;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/ledo/fantasy/game/GameView;->mlordrender:Lcom/ledo/fantasy/game/LordRender;

    .line 80
    iget-object v0, p0, Lcom/ledo/fantasy/game/GameView;->mlordrender:Lcom/ledo/fantasy/game/LordRender;

    invoke-virtual {p0, v0}, Lcom/ledo/fantasy/game/GameView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 81
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 10
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 115
    sget-object v0, Lcom/ledo/fantasy/game/GameView;->TAG:Ljava/lang/String;

    const-string v1, "GameView surfaceChanged called(format=%d,w=%d,h%d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 116
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 115
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 120
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 108
    sget-object v0, Lcom/ledo/fantasy/game/GameView;->TAG:Ljava/lang/String;

    const-string v1, "GameView surfaceCreated called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 110
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 125
    sget-object v0, Lcom/ledo/fantasy/game/GameView;->TAG:Ljava/lang/String;

    const-string v1, "GameView surfaceDestroyed called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 129
    return-void
.end method
