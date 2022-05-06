.class public Lcom/ledo/fantasy/game/IcefireEditBoxDialog;
.super Landroid/app/Dialog;
.source "IcefireEditBoxDialog.java"


# instance fields
.field private final kEditBoxInputFlagInitialCapsAllCharacters:I

.field private final kEditBoxInputFlagInitialCapsSentence:I

.field private final kEditBoxInputFlagInitialCapsWord:I

.field private final kEditBoxInputFlagPassword:I

.field private final kEditBoxInputFlagSensitive:I

.field private final kEditBoxInputModeAny:I

.field private final kEditBoxInputModeDecimal:I

.field private final kEditBoxInputModeEmailAddr:I

.field private final kEditBoxInputModeNumeric:I

.field private final kEditBoxInputModePhoneNumber:I

.field private final kEditBoxInputModeSingleLine:I

.field private final kEditBoxInputModeUrl:I

.field private final kKeyboardReturnTypeDefault:I

.field private final kKeyboardReturnTypeDone:I

.field private final kKeyboardReturnTypeGo:I

.field private final kKeyboardReturnTypeSearch:I

.field private final kKeyboardReturnTypeSend:I

.field private mInputEditText:Landroid/widget/EditText;

.field private final mInputFlag:I

.field private mInputFlagConstraints:I

.field private final mInputMode:I

.field private mInputModeContraints:I

.field private mIsMultiline:Z

.field private final mMaxLength:I

.field private final mMessage:Ljava/lang/String;

.field private final mReturnType:I

.field private mTextViewTitle:Landroid/widget/TextView;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 14
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pTitle"    # Ljava/lang/String;
    .param p3, "pMessage"    # Ljava/lang/String;
    .param p4, "pInputMode"    # I
    .param p5, "pInputFlag"    # I
    .param p6, "pReturnType"    # I
    .param p7, "pMaxLength"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 142
    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 56
    iput v1, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->kEditBoxInputModeAny:I

    .line 61
    iput v2, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->kEditBoxInputModeEmailAddr:I

    .line 66
    iput v3, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->kEditBoxInputModeNumeric:I

    .line 71
    iput v4, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->kEditBoxInputModePhoneNumber:I

    .line 76
    iput v5, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->kEditBoxInputModeUrl:I

    .line 81
    const/4 v0, 0x5

    iput v0, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->kEditBoxInputModeDecimal:I

    .line 86
    const/4 v0, 0x6

    iput v0, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->kEditBoxInputModeSingleLine:I

    .line 91
    iput v1, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->kEditBoxInputFlagPassword:I

    .line 96
    iput v2, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->kEditBoxInputFlagSensitive:I

    .line 101
    iput v3, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->kEditBoxInputFlagInitialCapsWord:I

    .line 106
    iput v4, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->kEditBoxInputFlagInitialCapsSentence:I

    .line 111
    iput v5, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->kEditBoxInputFlagInitialCapsAllCharacters:I

    .line 113
    iput v1, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->kKeyboardReturnTypeDefault:I

    .line 114
    iput v2, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->kKeyboardReturnTypeDone:I

    .line 115
    iput v3, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->kKeyboardReturnTypeSend:I

    .line 116
    iput v4, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->kKeyboardReturnTypeSearch:I

    .line 117
    iput v5, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->kKeyboardReturnTypeGo:I

    .line 144
    iput-object p2, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mTitle:Ljava/lang/String;

    .line 145
    iput-object p3, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mMessage:Ljava/lang/String;

    .line 146
    iput p4, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputMode:I

    .line 147
    iput p5, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputFlag:I

    .line 148
    iput p6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mReturnType:I

    .line 149
    iput p7, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mMaxLength:I

    .line 150
    return-void
.end method

.method static synthetic access$0(Lcom/ledo/fantasy/game/IcefireEditBoxDialog;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ledo/fantasy/game/IcefireEditBoxDialog;)V
    .registers 1

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->openKeyboard()V

    return-void
.end method

.method static synthetic access$2(Lcom/ledo/fantasy/game/IcefireEditBoxDialog;)V
    .registers 1

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->closeKeyboard()V

    return-void
.end method

.method private closeKeyboard()V
    .registers 4

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 316
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 318
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->hidePhoneVirtualKeyBoard()V

    .line 319
    return-void
.end method

.method private convertDipsToPixels(F)I
    .registers 4
    .param p1, "pDIPs"    # F

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 306
    .local v0, "scale":F
    mul-float v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method private openKeyboard()V
    .registers 4

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 311
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 312
    return-void
.end method


# virtual methods
.method public hidePhoneVirtualKeyBoard()V
    .registers 3

    .prologue
    .line 325
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_21

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    if-eqz v0, :cond_21

    sget-boolean v0, Lcom/ledo/fantasy/game/GameApp;->s_bNeedHideDevVirtualKey:Z

    if-eqz v0, :cond_21

    .line 326
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 327
    const/16 v1, 0x1006

    .line 326
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 332
    :cond_21
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .param p1, "pSavedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v12, 0x41200000    # 10.0f

    const/4 v11, -0x1

    const/4 v10, -0x2

    const/4 v9, 0x1

    .line 154
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v8, -0x80000000

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 159
    .local v2, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 161
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 163
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mTextViewTitle:Landroid/widget/TextView;

    .line 164
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 165
    .local v5, "textviewParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0, v12}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->convertDipsToPixels(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 166
    iget-object v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mTextViewTitle:Landroid/widget/TextView;

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v6, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 167
    iget-object v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mTextViewTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    new-instance v6, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    .line 170
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 171
    .local v0, "editTextParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0, v12}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->convertDipsToPixels(F)I

    move-result v6

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 173
    iget-object v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    invoke-virtual {p0, v2, v3}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 179
    iget-object v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mTextViewTitle:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getImeOptions()I

    move-result v4

    .line 183
    .local v4, "oldImeOptions":I
    iget-object v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    const/high16 v7, 0x10000000

    or-int/2addr v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 184
    iget-object v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getImeOptions()I

    move-result v4

    .line 186
    iget v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputMode:I

    packed-switch v6, :pswitch_data_15e

    .line 213
    :goto_9b
    iget-boolean v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mIsMultiline:Z

    if-eqz v6, :cond_a6

    .line 214
    iget v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputModeContraints:I

    const/high16 v7, 0x20000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputModeContraints:I

    .line 217
    :cond_a6
    iget-object v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    iget v7, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputModeContraints:I

    iget v8, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputFlagConstraints:I

    or-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 219
    iget v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputFlag:I

    packed-switch v6, :pswitch_data_170

    .line 239
    :goto_b5
    iget-object v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    iget v7, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputFlagConstraints:I

    iget v8, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputModeContraints:I

    or-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 241
    iget v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mReturnType:I

    packed-switch v6, :pswitch_data_17e

    .line 258
    iget-object v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 262
    :goto_cb
    iget v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mMaxLength:I

    if-lez v6, :cond_e0

    .line 263
    iget-object v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    new-array v7, v9, [Landroid/text/InputFilter;

    const/4 v8, 0x0

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    iget v10, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mMaxLength:I

    invoke-direct {v9, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 266
    :cond_e0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 267
    .local v1, "initHandler":Landroid/os/Handler;
    new-instance v6, Lcom/ledo/fantasy/game/IcefireEditBoxDialog$1;

    invoke-direct {v6, p0}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog$1;-><init>(Lcom/ledo/fantasy/game/IcefireEditBoxDialog;)V

    .line 274
    const-wide/16 v8, 0xc8

    .line 267
    invoke-virtual {v1, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 276
    iget-object v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    new-instance v7, Lcom/ledo/fantasy/game/IcefireEditBoxDialog$2;

    invoke-direct {v7, p0}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog$2;-><init>(Lcom/ledo/fantasy/game/IcefireEditBoxDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 289
    return-void

    .line 188
    .end local v1    # "initHandler":Landroid/os/Handler;
    :pswitch_fa
    const v6, 0x20001

    iput v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputModeContraints:I

    goto :goto_9b

    .line 191
    :pswitch_100
    const/16 v6, 0x21

    iput v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputModeContraints:I

    goto :goto_9b

    .line 194
    :pswitch_105
    const/16 v6, 0x1002

    iput v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputModeContraints:I

    goto :goto_9b

    .line 197
    :pswitch_10a
    const/4 v6, 0x3

    iput v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputModeContraints:I

    goto :goto_9b

    .line 200
    :pswitch_10e
    const/16 v6, 0x11

    iput v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputModeContraints:I

    goto :goto_9b

    .line 203
    :pswitch_113
    const/16 v6, 0x3002

    iput v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputModeContraints:I

    goto :goto_9b

    .line 206
    :pswitch_118
    iput v9, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputModeContraints:I

    goto :goto_9b

    .line 221
    :pswitch_11b
    const/16 v6, 0x81

    iput v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_b5

    .line 224
    :pswitch_120
    const/high16 v6, 0x80000

    iput v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_b5

    .line 227
    :pswitch_125
    const/16 v6, 0x2000

    iput v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_b5

    .line 230
    :pswitch_12a
    const/16 v6, 0x4000

    iput v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_b5

    .line 233
    :pswitch_12f
    const/16 v6, 0x1000

    iput v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_b5

    .line 243
    :pswitch_134
    iget-object v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_cb

    .line 246
    :pswitch_13c
    iget-object v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 v7, v4, 0x6

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_cb

    .line 249
    :pswitch_144
    iget-object v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 v7, v4, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_cb

    .line 252
    :pswitch_14c
    iget-object v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 v7, v4, 0x3

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_cb

    .line 255
    :pswitch_155
    iget-object v6, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 v7, v4, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_cb

    .line 186
    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_fa
        :pswitch_100
        :pswitch_105
        :pswitch_10a
        :pswitch_10e
        :pswitch_113
        :pswitch_118
    .end packed-switch

    .line 219
    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_11b
        :pswitch_120
        :pswitch_125
        :pswitch_12a
        :pswitch_12f
    .end packed-switch

    .line 241
    :pswitch_data_17e
    .packed-switch 0x0
        :pswitch_134
        :pswitch_13c
        :pswitch_144
        :pswitch_14c
        :pswitch_155
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "pMotionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    .line 348
    :goto_7
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mIsMultiline:Z

    return v0

    .line 342
    :pswitch_a
    invoke-direct {p0}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->closeKeyboard()V

    .line 343
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->dismiss()V

    .line 344
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ledo/fantasy/game/IcefireHelper;->setEditTextDialogResult(Ljava/lang/String;)V

    goto :goto_7

    .line 339
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method
