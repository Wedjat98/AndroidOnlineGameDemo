.class public Landroid/support/v7/widget/TintTypedArray;
.super Ljava/lang/Object;
.source "TintTypedArray.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mTypedValue:Landroid/util/TypedValue;

.field private final mWrapped:Landroid/content/res/TypedArray;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "array"    # Landroid/content/res/TypedArray;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroid/support/v7/widget/TintTypedArray;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 69
    return-void
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I
    .param p2, "attrs"    # [I

    .prologue
    .line 63
    new-instance v0, Landroid/support/v7/widget/TintTypedArray;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I

    .prologue
    .line 53
    new-instance v0, Landroid/support/v7/widget/TintTypedArray;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 58
    new-instance v0, Landroid/support/v7/widget/TintTypedArray;

    .line 59
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method


# virtual methods
.method public getBoolean(IZ)Z
    .registers 4
    .param p1, "index"    # I
    .param p2, "defValue"    # Z

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 2
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getColor(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 162
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    return v0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 166
    iget-object v2, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 167
    iget-object v2, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 168
    .local v0, "resourceId":I
    if-eqz v0, :cond_1a

    .line 169
    iget-object v2, p0, Landroid/support/v7/widget/TintTypedArray;->mContext:Landroid/content/Context;

    .line 170
    invoke-static {v2, v0}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 171
    .local v1, "value":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_1a

    .line 176
    .end local v0    # "resourceId":I
    .end local v1    # "value":Landroid/content/res/ColorStateList;
    :goto_19
    return-object v1

    :cond_1a
    iget-object v2, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_19
.end method

.method public getDimension(IF)F
    .registers 4
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .prologue
    .line 184
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    return v0
.end method

.method public getDimensionPixelOffset(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 188
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    return v0
.end method

.method public getDimensionPixelSize(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 192
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    return v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 72
    iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 73
    iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 74
    .local v0, "resourceId":I
    if-eqz v0, :cond_18

    .line 75
    iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 78
    .end local v0    # "resourceId":I
    :goto_17
    return-object v1

    :cond_18
    iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_17
.end method

.method public getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 82
    iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 83
    iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 84
    .local v0, "resourceId":I
    if-eqz v0, :cond_1d

    .line 85
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/TintTypedArray;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 88
    .end local v0    # "resourceId":I
    :goto_1c
    return-object v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public getFloat(IF)F
    .registers 4
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .prologue
    .line 158
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    return v0
.end method

.method public getFont(IILandroid/support/v4/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;
    .registers 7
    .param p1, "index"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2, "style"    # I
    .param p3, "fontCallback"    # Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 111
    iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 112
    .local v0, "resourceId":I
    if-nez v0, :cond_b

    .line 113
    const/4 v1, 0x0

    .line 118
    :goto_a
    return-object v1

    .line 115
    :cond_b
    iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    if-nez v1, :cond_16

    .line 116
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    .line 118
    :cond_16
    iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/widget/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    invoke-static {v1, v0, v2, p2, p3}, Landroid/support/v4/content/res/ResourcesCompat;->getFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroid/support/v4/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_a
.end method

.method public getFraction(IIIF)F
    .registers 6
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "pbase"    # I
    .param p4, "defValue"    # F

    .prologue
    .line 204
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v0

    return v0
.end method

.method public getIndex(I)I
    .registers 3
    .param p1, "at"    # I

    .prologue
    .line 130
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    return v0
.end method

.method public getIndexCount()I
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    return v0
.end method

.method public getInt(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method public getInteger(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 180
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    return v0
.end method

.method public getLayoutDimension(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    return v0
.end method

.method public getLayoutDimension(ILjava/lang/String;)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNonResourceString(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 146
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceId(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 208
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 138
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 212
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    .line 221
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    .line 227
    :goto_c
    return v0

    .line 223
    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    if-nez v0, :cond_18

    .line 224
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    .line 226
    :cond_18
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 227
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    iget v0, v0, Landroid/util/TypedValue;->type:I

    goto :goto_c
.end method

.method public getValue(ILandroid/util/TypedValue;)Z
    .registers 4
    .param p1, "index"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v0

    return v0
.end method

.method public hasValue(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    return v0
.end method

.method public length()I
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    return v0
.end method

.method public peekValue(I)Landroid/util/TypedValue;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    return-object v0
.end method

.method public recycle()V
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 245
    return-void
.end method
