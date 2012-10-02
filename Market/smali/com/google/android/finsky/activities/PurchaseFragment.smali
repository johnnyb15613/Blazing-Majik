.class public Lcom/google/android/finsky/activities/PurchaseFragment;
.super Lcom/google/android/finsky/fragments/UrlBasedPageFragment;
.source "PurchaseFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$SelectInstrumentFamilyListener;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
.implements Lcom/google/android/finsky/billing/BillingFlowContext;
.implements Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;
.implements Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$DownloadSizeDialogListener;
.implements Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseStatusListener;,
        Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;,
        Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;,
        Lcom/google/android/finsky/activities/PurchaseFragment$AddInstrumentButtonListener;,
        Lcom/google/android/finsky/activities/PurchaseFragment$BuyButtonClickListener;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountNameView:Landroid/widget/TextView;

.field private mAccountPanel:Lcom/google/android/finsky/layout/AccessibleLinearLayout;

.field private mAccountPayWithView:Landroid/view/View;

.field private mAccountQualifiedDfe:Lcom/google/android/finsky/api/DfeApi;

.field private mAccountSeparator:Landroid/view/View;

.field private mAccountSeparatorWrapper:Landroid/view/View;

.field private mAcquireButton:Landroid/widget/Button;

.field private mAddInstrumentButton:Landroid/widget/Button;

.field private mAddInstrumentScreenShown:Z

.field private mBillingFlowListener:Lcom/google/android/finsky/billing/BillingFlowListener;

.field private mChallenging:Z

.field private mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

.field private mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

.field private mContinueUrl:Ljava/lang/String;

.field private mDetailsPanel:Landroid/view/ViewGroup;

.field private mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mDynamicButtonContainer:Z

.field private mExternalReferrer:Ljava/lang/String;

.field private mExtraDetailsContainer:Landroid/view/ViewGroup;

.field private mExtraDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

.field private mFinishedWithError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

.field private mFinishedWithSuccess:Z

.field private mFooterContainer:Landroid/view/ViewGroup;

.field private mIabParameters:Lcom/google/android/finsky/billing/IabParameters;

.field private mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;

.field private mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

.field private mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

.field private mInstrumentsRegistered:Z

.field private mIsDirectPurchase:Z

.field private mIsRetainedInstance:Z

.field private mLastSelectedInstrumentId:Ljava/lang/String;

.field private mLeadingStrip:Landroid/view/View;

.field private mListener:Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;

.field private mOfferType:I

.field private mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

.field private mPurchaseDocumentDetailsViewBinder:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

.field private mPurchaseRow:Landroid/view/View;

.field private mPurchaseRowFooter:Landroid/view/View;

.field private mReferrer:Ljava/lang/String;

.field private mReferrerCookie:Ljava/lang/String;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSelectInstrumentFamilyButton:Landroid/widget/Button;

.field private mSelectedAddInstrumentFamily:I

.field private mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

.field private mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

.field private mSuppressError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

.field private mViewStates:Landroid/os/Bundle;

.field private mWalletByline:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;-><init>()V

    .line 142
    new-instance v0, Lcom/google/android/finsky/activities/PurchaseFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$1;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mBillingFlowListener:Lcom/google/android/finsky/billing/BillingFlowListener;

    .line 293
    new-instance v0, Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/InstrumentFactory;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    .line 303
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I

    .line 1847
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/billing/BillingFlow;)Lcom/google/android/finsky/billing/BillingFlow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/activities/PurchaseFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseRowFooter:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/api/model/DfeDetails;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/api/model/Document;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment;->onDocumentLoaded(Lcom/google/android/finsky/api/model/Document;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/finsky/activities/PurchaseFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->loadBillingCountries()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->completeCheckoutPurchase()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->registerInstrumentFactories()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->startOrResumePurchase()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->initializeDcb2Provisioning()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/api/model/DfeDetails;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/api/model/Document;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->documentSuccessfullyFound()V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/android/volley/VolleyError;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment;->showDocumentLoadError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$2802(Lcom/google/android/finsky/activities/PurchaseFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentScreenShown:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/google/android/finsky/activities/PurchaseFragment;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment;->onAddInstrumentResult(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->beginCheckout()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->continueCheckoutSizeCheck()V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/android/finsky/activities/PurchaseFragment;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment;->onUpdateAddressResult(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3202(Lcom/google/android/finsky/activities/PurchaseFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mChallenging:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/PurchaseFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/PurchaseFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment;->showAddInstrumentScreen(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/billing/CheckoutPurchase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/billing/InstrumentFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/activities/PurchaseFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/finsky/activities/PurchaseFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseRow:Landroid/view/View;

    return-object v0
.end method

.method private answerChallenge(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 1380
    if-eqz p1, :cond_0

    const-string v0, "challenge_response"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1382
    const-string v0, "challenge_response"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1384
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->answerChallenge(Landroid/os/Bundle;)V

    .line 1386
    :cond_0
    return-void
.end method

.method private attemptDocLoadFromPurchaseDocId()V
    .locals 4

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "docId_to_purchase"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, purchaseId:Ljava/lang/String;
    new-instance v1, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-static {v0}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    .line 922
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    new-instance v2, Lcom/google/android/finsky/activities/PurchaseFragment$7;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$7;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 933
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    new-instance v2, Lcom/google/android/finsky/activities/PurchaseFragment$8;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$8;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 939
    return-void
.end method

.method private beginCheckout()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 972
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_0

    .line 973
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 974
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->purchaseLock:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 976
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->purchasePin:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 977
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 978
    const-string v0, "Purchase Lock set, but no PIN code set.  Allowing purchase."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 994
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->continueCheckoutSizeCheck()V

    .line 995
    :goto_1
    return-void

    .line 981
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pinLock.purchase?doc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const v2, 0x7f0701c7

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v7}, Lcom/google/android/finsky/activities/PinEntryDialog;->getIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 986
    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 990
    :cond_2
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pinLock.none?doc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private buildCompleteAnalyticsExtra()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1698
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-nez v0, :cond_0

    .line 1699
    const-string v0, "mSelectedInstrument cannot be null here."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1700
    const-string v0, ""

    .line 1711
    :goto_0
    return-object v0

    .line 1702
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentFamily()I

    move-result v3

    .line 1703
    const/4 v0, 0x0

    .line 1704
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/Instrument;->getCheckoutOption()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    move-result-object v1

    .line 1705
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasTotal()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getTotal()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasAmount()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1707
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getTotal()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getAmount()Lcom/google/android/finsky/remoting/protos/Buy$Money;

    move-result-object v0

    move-object v1, v0

    .line 1709
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1710
    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->getMicros()J

    move-result-wide v0

    .line 1711
    :goto_3
    const-string v4, "instrumentFamily=%d&priceCurrency=%s&priceMicros=%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v2, v5, v3

    const/4 v2, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1709
    :cond_1
    const-string v0, ""

    move-object v2, v0

    goto :goto_2

    .line 1710
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_3

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method private buildCompleteFlowParameters()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 1640
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1641
    const-string v1, "referrer_url"

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    const-string v1, "referrer_list_cookie"

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    const-string v1, "authAccount"

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    return-object v0
.end method

.method private buildViewAnalyticsExtra()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1658
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-nez v0, :cond_0

    .line 1659
    const-string v0, "mCheckoutPurchase cannot be null here."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1660
    const-string v0, ""

    .line 1691
    :goto_0
    return-object v0

    .line 1663
    :cond_0
    const/4 v0, 0x0

    .line 1664
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getDefaultInstrument()Lcom/google/android/finsky/billing/Instrument;

    move-result-object v2

    .line 1665
    if-eqz v2, :cond_2

    .line 1666
    invoke-virtual {v2}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentFamily()I

    move-result v1

    .line 1667
    invoke-virtual {v2}, Lcom/google/android/finsky/billing/Instrument;->getCheckoutOption()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    move-result-object v2

    .line 1668
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasTotal()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getTotal()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasAmount()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1670
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getTotal()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getAmount()Lcom/google/android/finsky/remoting/protos/Buy$Money;

    move-result-object v0

    :cond_1
    move v2, v1

    move-object v1, v0

    .line 1680
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1681
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1682
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getInstruments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/Instrument;

    .line 1683
    invoke-virtual {v0}, Lcom/google/android/finsky/billing/Instrument;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v4

    .line 1684
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentFamily()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1673
    :cond_2
    const/4 v1, -0x1

    .line 1674
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v2

    .line 1675
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getItem()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getItem()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasAmount()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1677
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getItem()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getAmount()Lcom/google/android/finsky/remoting/protos/Buy$Money;

    move-result-object v0

    move v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v3, v5

    .line 1683
    goto :goto_3

    .line 1686
    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getToses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v6

    .line 1687
    :goto_4
    const-string v3, ","

    iget-object v8, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v8}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getEligibleInstrumentFamilies()Ljava/util/List;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    .line 1689
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    .line 1690
    :goto_5
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->getMicros()J

    move-result-wide v8

    .line 1691
    :goto_6
    const-string v1, "defaultInstrumentFamily=%d&hasTos=%s&priceCurrency=%s&priceMicros=%d&availableFamilies=%s&invalidFamilies=%s&eligibleFamilies=%s"

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v7

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v11, v6

    const/4 v0, 0x2

    aput-object v3, v11, v0

    const/4 v0, 0x3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v11, v0

    const/4 v0, 0x4

    aput-object v4, v11, v0

    const/4 v0, 0x5

    aput-object v5, v11, v0

    const/4 v0, 0x6

    aput-object v10, v11, v0

    invoke-static {v1, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    move v0, v7

    .line 1686
    goto :goto_4

    .line 1689
    :cond_6
    const-string v3, ""

    goto :goto_5

    .line 1690
    :cond_7
    const-wide/16 v8, -0x1

    goto :goto_6

    :cond_8
    move v2, v1

    move-object v1, v0

    goto/16 :goto_1
.end method

.method private checkForInstallationState()V
    .locals 9

    .prologue
    .line 624
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v7

    .line 625
    .local v7, appStates:Lcom/google/android/finsky/appstate/AppStates;
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v6

    .line 626
    .local v6, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v6, :cond_0

    iget-object v0, v6, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, v6, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v8, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    .line 629
    .local v8, installedVersion:I
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionCode()I

    move-result v0

    if-lt v8, v0, :cond_0

    .line 630
    const v1, 0x7f070148

    const/4 v2, -0x1

    const v3, 0x7f070197

    const/4 v4, 0x3

    const-string v5, "already_installed_app"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/activities/PurchaseFragment;->showAlreadyOwnedDialog(IIIILjava/lang/String;)V

    .line 639
    .end local v8           #installedVersion:I
    :cond_0
    return-void
.end method

.method private completeCheckoutPurchase()V
    .locals 4

    .prologue
    .line 1648
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "completePurchase?doc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->buildCompleteAnalyticsExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1651
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    invoke-static {}, Lcom/google/android/finsky/billing/BillingUtils;->getRiskHeader()Ljava/lang/String;

    move-result-object v0

    .line 1653
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->complete(Lcom/google/android/finsky/billing/Instrument;Ljava/lang/String;)V

    .line 1655
    :cond_0
    return-void
.end method

.method private continueCheckout()V
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_0

    .line 1044
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->runCompleteFlowAndCompleteCheckoutPurchase()V

    .line 1048
    :goto_0
    return-void

    .line 1046
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->continueFreeCheckout()V

    goto :goto_0
.end method

.method private continueCheckoutSizeCheck()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 1003
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1004
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getInstallPolicies()Lcom/google/android/finsky/installer/InstallPolicies;

    move-result-object v2

    .line 1005
    invoke-virtual {v2}, Lcom/google/android/finsky/installer/InstallPolicies;->getMaxBytesOverMobileRecommended()J

    move-result-wide v3

    .line 1006
    invoke-virtual {v2}, Lcom/google/android/finsky/installer/InstallPolicies;->getMaxBytesOverMobile()J

    move-result-wide v5

    .line 1007
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    .line 1009
    invoke-virtual {v2}, Lcom/google/android/finsky/installer/InstallPolicies;->hasMobileNetwork()Z

    move-result v7

    if-eqz v7, :cond_2

    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-lez v7, :cond_2

    invoke-static {v0}, Lcom/google/android/finsky/local/AssetUtils;->totalDeliverySize(Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;)J

    move-result-wide v7

    cmp-long v3, v7, v3

    if-ltz v3, :cond_2

    .line 1013
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 1014
    const-string v0, "wifi_download_dialog"

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1037
    :goto_0
    return-void

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getInstallationSize()J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-gez v0, :cond_1

    move v0, v1

    .line 1025
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/finsky/installer/InstallPolicies;->isMobileNetwork()Z

    move-result v2

    .line 1026
    invoke-static {p0, v1, v0, v2}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->newInstance(Landroid/support/v4/app/Fragment;ZZZ)Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;

    move-result-object v0

    .line 1028
    const-string v1, "wifi_download_dialog"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1023
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1033
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1034
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/finsky/receivers/Installer;->setMobileDataAllowed(Ljava/lang/String;)V

    .line 1036
    :cond_3
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->continueCheckout()V

    goto :goto_0
.end method

.method private continueFreeCheckout()V
    .locals 5

    .prologue
    .line 1051
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confirmFreeDownload?doc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getLibrary()Lcom/google/android/finsky/library/Library;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/finsky/library/AccountLibrary;->getLibraryIdFromBackend(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    iget v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mOfferType:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/finsky/library/LibraryEntry;->fromDocument(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;I)Lcom/google/android/finsky/library/LibraryEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/library/Library;->contains(Lcom/google/android/finsky/library/LibraryEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1057
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    iget v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mOfferType:I

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExternalReferrer:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContinueUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/utils/PurchaseInitiator;->makeFreePurchase(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;)V

    .line 1063
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithSuccess()V

    .line 1064
    return-void

    .line 1059
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExternalReferrer:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContinueUrl:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/utils/PurchaseInitiator;->initiateDownload(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;)V

    goto :goto_0
.end method

.method private documentSuccessfullyFound()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 888
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->switchToData()V

    .line 889
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "referrer_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    .line 890
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "referrer_cookie"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    .line 891
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "referrer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExternalReferrer:Ljava/lang/String;

    .line 892
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "continue_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContinueUrl:Ljava/lang/String;

    .line 893
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 894
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLeadingStrip:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 895
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/ObservableScrollView;->setVisibility(I)V

    .line 896
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->onDataChanged()V

    .line 897
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isFreeUi()Z

    move-result v0

    if-nez v0, :cond_1

    .line 898
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 899
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "purchase?doc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V

    .line 903
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->initializeBilling()V

    .line 911
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 912
    return-void

    .line 905
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    if-nez v0, :cond_2

    .line 906
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "freeDownload?doc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :cond_2
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->setupFreeUi()V

    goto :goto_0
.end method

.method private fillInTosses()V
    .locals 8

    .prologue
    .line 1138
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0042

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1140
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDataView:Landroid/view/ViewGroup;

    const v2, 0x7f0801b3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1141
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1142
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1143
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getToses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;

    .line 1144
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;->getShorthand()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    .line 1145
    const v2, 0x7f0400df

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 1146
    const v2, 0x7f0801c6

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1147
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;->getAcceptance()Z

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1148
    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1149
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1150
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1151
    const v1, 0x7f0801c7

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1152
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1153
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1154
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1156
    :cond_0
    return-void
.end method

.method private finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1741
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_0

    .line 1742
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->detach()V

    .line 1743
    iput-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    .line 1745
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    if-eqz v0, :cond_1

    .line 1746
    const-string v0, "Ignoring second error: %s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1760
    :goto_0
    return-void

    .line 1749
    :cond_1
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 1750
    iput-boolean v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithSuccess:Z

    .line 1751
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mListener:Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;

    if-eqz v0, :cond_2

    .line 1752
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mListener:Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;->onFailure(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    goto :goto_0

    .line 1754
    :cond_2
    iget-object v0, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1755
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    invoke-interface {v0, v4, v1, v3}, Lcom/google/android/finsky/fragments/PageFragmentHost;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1757
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v0}, Lcom/google/android/finsky/fragments/PageFragmentHost;->goBack()V

    goto :goto_0
.end method

.method private finishWithSuccess()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1763
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v2, :cond_0

    .line 1764
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/CheckoutPurchase;->detach()V

    .line 1765
    iput-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    .line 1767
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithSuccess:Z

    if-eqz v2, :cond_1

    .line 1784
    :goto_0
    return-void

    .line 1770
    :cond_1
    iput-boolean v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithSuccess:Z

    .line 1771
    iput-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 1772
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mListener:Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;

    if-eqz v2, :cond_2

    .line 1773
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mListener:Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;

    invoke-interface {v2}, Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;->onSuccess()V

    goto :goto_0

    .line 1775
    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 1776
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v2}, Lcom/google/android/finsky/fragments/PageFragmentHost;->goBack()V

    goto :goto_0

    .line 1778
    :cond_3
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v2}, Lcom/google/android/finsky/fragments/PageFragmentHost;->goBack()V

    .line 1779
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "docId_to_purchase"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1780
    .local v0, purchaseDocId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1781
    .local v1, purchaseDocUrl:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mOfferType:I

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2, v1, v3, v4}, Lcom/google/android/finsky/activities/PostPurchaseDialog;->show(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private getLibrary()Lcom/google/android/finsky/library/Library;
    .locals 2

    .prologue
    .line 1237
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v0

    return-object v0
.end method

.method private initializeBilling()V
    .locals 2

    .prologue
    .line 808
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_0

    .line 832
    :goto_0
    return-void

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    const v1, 0x7f070063

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->switchToLoading(I)V

    .line 814
    new-instance v0, Lcom/google/android/finsky/activities/PurchaseFragment$5;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$5;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->initializeCarrierBillingStorage(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private initializeDcb2Provisioning()V
    .locals 1

    .prologue
    .line 835
    new-instance v0, Lcom/google/android/finsky/activities/PurchaseFragment$6;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$6;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->initializeCarrierBillingProvisioning(Ljava/lang/Runnable;)V

    .line 841
    return-void
.end method

.method private isEveryTosAccepted()Z
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->areAllTossesAccepted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFreeUi()Z
    .locals 3

    .prologue
    .line 957
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getLibrary()Lcom/google/android/finsky/library/Library;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mOfferType:I

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/utils/LibraryUtils;->isOfferOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    iget v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mOfferType:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/Document;->needsCheckoutFlow(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInstrumentRequired()Z
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->isInstrumentRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadBillingCountries()V
    .locals 3

    .prologue
    .line 853
    new-instance v0, Lcom/google/android/finsky/billing/GetBillingCountriesAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;-><init>()V

    .line 854
    .local v0, billingCountriesAction:Lcom/google/android/finsky/billing/GetBillingCountriesAction;
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;->run(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 855
    return-void
.end method

.method public static newIabInstance(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/finsky/billing/IabParameters;)Lcom/google/android/finsky/activities/PurchaseFragment;
    .locals 10
    .parameter "account"
    .parameter "sku"
    .parameter "iabParameters"

    .prologue
    const/4 v3, 0x0

    .line 388
    invoke-static {p1}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lcom/google/android/finsky/activities/PurchaseFragment;->newInstance(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/PurchaseFragment;

    move-result-object v9

    .line 398
    .local v9, fragment:Lcom/google/android/finsky/activities/PurchaseFragment;
    const-string v0, "iab_parameters"

    invoke-virtual {v9, v0, p2}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 399
    return-object v9
.end method

.method public static newInstance(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/PurchaseFragment;
    .locals 2
    .parameter "account"
    .parameter "url"
    .parameter "offerType"
    .parameter "referrerUrl"
    .parameter "referrerCookie"
    .parameter "isDirectLinkPurchase"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "docIdToPurchase"

    .prologue
    .line 369
    new-instance v0, Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/PurchaseFragment;-><init>()V

    .line 370
    .local v0, purchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;
    const v1, 0x7f0e0040

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->setTheme(I)V

    .line 371
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/activities/PurchaseFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 372
    const-string v1, "account"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 373
    const-string v1, "offer_type"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;I)V

    .line 374
    const-string v1, "referrer_url"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v1, "referrer_cookie"

    invoke-virtual {v0, v1, p4}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v1, "is_direct_link_purchase"

    invoke-virtual {v0, v1, p5}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;Z)V

    .line 377
    const-string v1, "referrer"

    invoke-virtual {v0, v1, p6}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v1, "continue_url"

    invoke-virtual {v0, v1, p7}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v1, "docId_to_purchase"

    invoke-virtual {v0, v1, p8}, Lcom/google/android/finsky/activities/PurchaseFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    return-object v0
.end method

.method private onAddInstrumentError(Ljava/lang/String;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->prepare()V

    .line 1619
    return-void
.end method

.method private onAddInstrumentFinished(Z)V
    .locals 2
    .parameter "canceled"

    .prologue
    .line 1606
    if-nez p1, :cond_0

    .line 1607
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->prepare()V

    .line 1615
    :goto_0
    return-void

    .line 1609
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1610
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->selectAddInstrument(I)V

    goto :goto_0

    .line 1612
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLastSelectedInstrumentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->selectInstrument(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onAddInstrumentResult(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1389
    if-nez p1, :cond_0

    .line 1392
    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->onAddInstrumentFinished(Z)V

    .line 1404
    :goto_0
    return-void

    .line 1393
    :cond_0
    const-string v0, "billing_flow_error"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1395
    const-string v0, "billing_flow_error_message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1397
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->onAddInstrumentError(Ljava/lang/String;)V

    goto :goto_0

    .line 1399
    :cond_1
    const-string v0, "billing_flow_canceled"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1402
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->onAddInstrumentFinished(Z)V

    goto :goto_0
.end method

.method private onDocumentLoaded(Lcom/google/android/finsky/api/model/Document;)V
    .locals 3
    .parameter "document"

    .prologue
    .line 861
    if-nez p1, :cond_0

    .line 862
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeDetails;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->showDocumentLoadError(Lcom/android/volley/VolleyError;)V

    .line 881
    :goto_0
    return-void

    .line 866
    :cond_0
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 868
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "docId_to_purchase"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 870
    .local v0, purchaseDocId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 872
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    .line 873
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->documentSuccessfullyFound()V

    goto :goto_0

    .line 879
    :cond_2
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->attemptDocLoadFromPurchaseDocId()V

    goto :goto_0
.end method

.method private onUpdateAddressResult(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1407
    if-eqz p1, :cond_0

    const-string v0, "billing_flow_error"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1410
    const-string v0, "Update Address error: %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "billing_flow_error_message"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1413
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->prepare()V

    .line 1414
    return-void
.end method

.method private openDocument(Ljava/lang/String;)V
    .locals 2
    .parameter "docId"

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/IntentUtils;->createViewDocumentUrlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->startActivity(Landroid/content/Intent;)V

    .line 1789
    return-void
.end method

.method private registerInstrumentFactories()V
    .locals 1

    .prologue
    .line 844
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentsRegistered:Z

    if-nez v0, :cond_0

    .line 845
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentsRegistered:Z

    .line 846
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardInstrument;->registerWithFactory(Lcom/google/android/finsky/billing/InstrumentFactory;)V

    .line 847
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-static {v0}, Lcom/google/android/finsky/billing/giftcard/GiftCardFormOfPayment;->registerWithInstrumentFactory(Lcom/google/android/finsky/billing/InstrumentFactory;)V

    .line 848
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->registerDcbInstrument(Lcom/google/android/finsky/billing/InstrumentFactory;)V

    .line 850
    :cond_0
    return-void
.end method

.method private restoreSelectedInstrumentAndBillingFlow()V
    .locals 3

    .prologue
    .line 1093
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mIsRetainedInstance:Z

    if-eqz v1, :cond_3

    .line 1094
    iget v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1095
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->selectAddInstrument(I)V

    .line 1099
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mViewStates:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 1100
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mViewStates:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->resumeBillingFlowFromBundle(Landroid/os/Bundle;)V

    .line 1110
    :cond_1
    :goto_1
    return-void

    .line 1096
    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLastSelectedInstrumentId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1097
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLastSelectedInstrumentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->selectInstrument(Ljava/lang/String;)V

    goto :goto_0

    .line 1102
    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    if-nez v1, :cond_4

    .line 1103
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V

    goto :goto_1

    .line 1104
    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "selected_instrument_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1105
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "selected_instrument_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1106
    .local v0, instrumentId:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getInstrument(Ljava/lang/String;)Lcom/google/android/finsky/billing/Instrument;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    .line 1107
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->selectInstrument(Ljava/lang/String;)V

    .line 1108
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->resumeBillingFlowFromBundle(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private resumeBillingFlowFromBundle(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-eqz v0, :cond_0

    const-string v0, "completing_billing_flow"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mBillingFlowListener:Lcom/google/android/finsky/billing/BillingFlowListener;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->buildCompleteFlowParameters()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/finsky/billing/Instrument;->completePurchase(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    .line 1116
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    const-string v1, "completing_billing_flow"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/BillingFlow;->resumeFromSavedState(Landroid/os/Bundle;)V

    .line 1121
    :cond_0
    return-void
.end method

.method private runCompleteFlowAndCompleteCheckoutPurchase()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1622
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isInstrumentRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-eqz v0, :cond_3

    .line 1623
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    const v1, 0x7f070064

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->switchToLoading(I)V

    .line 1624
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1625
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-eqz v0, :cond_1

    .line 1626
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mBillingFlowListener:Lcom/google/android/finsky/billing/BillingFlowListener;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->buildCompleteFlowParameters()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/finsky/billing/Instrument;->completePurchase(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    .line 1629
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v0, :cond_2

    .line 1630
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingFlow;->start()V

    .line 1637
    :goto_0
    return-void

    .line 1632
    :cond_2
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->completeCheckoutPurchase()V

    goto :goto_0

    .line 1635
    :cond_3
    const-string v0, "No instrument selected."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private saveViewStates(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDocumentDetailsViewBinder:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->saveState(Landroid/os/Bundle;)V

    .line 1452
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->saveState(Landroid/os/Bundle;)V

    .line 1453
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v0, :cond_0

    .line 1456
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1457
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/BillingFlow;->saveState(Landroid/os/Bundle;)V

    .line 1458
    const-string v1, "completing_billing_flow"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    .line 1461
    :cond_0
    return-void
.end method

.method private setupFooters(Lcom/google/android/finsky/billing/Instrument;)V
    .locals 6
    .parameter

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFooterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1281
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1282
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getFooterHtmlList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1283
    if-eqz p1, :cond_0

    .line 1284
    invoke-virtual {p1}, Lcom/google/android/finsky/billing/Instrument;->getCheckoutOption()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getFooterHtmlList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1286
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1287
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1288
    const v1, 0x7f0400da

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFooterContainer:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1290
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1291
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1292
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFooterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1294
    :cond_1
    return-void
.end method

.method private setupFreeUi()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1124
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->switchToFreeUi()V

    .line 1125
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ObservableScrollView;->setVisibility(I)V

    .line 1126
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountSeparatorWrapper:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1129
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountSeparator:Landroid/view/View;

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDynamicButtonContainer:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1130
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V

    .line 1132
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V

    .line 1133
    return-void

    :cond_0
    move v0, v1

    .line 1129
    goto :goto_0
.end method

.method private showAddInstrumentScreen(I)V
    .locals 8
    .parameter "instrumentFamily"

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentScreenShown:Z

    if-eqz v0, :cond_0

    .line 524
    const-string v0, "Already showing add instrument screen, ignoring."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    :goto_0
    return-void

    .line 527
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentScreenShown:Z

    .line 528
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v2, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    sget-object v4, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/billing/InstrumentFactory;->getCreateIntent(ILjava/lang/String;ILcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 531
    .local v7, intent:Landroid/content/Intent;
    const/16 v0, 0x1f

    invoke-virtual {p0, v7, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private showAlreadyOwnedDialog(IIIILjava/lang/String;)V
    .locals 4
    .parameter "messageId"
    .parameter "positiveButtonId"
    .parameter "negativeButtonId"
    .parameter "requestCode"
    .parameter "tag"

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 673
    :goto_0
    return-void

    .line 666
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(III)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 668
    .local v0, alert:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 669
    .local v1, extraArguments:Landroid/os/Bundle;
    const-string v2, "docId_to_purchase"

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-virtual {v0, p0, p4, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 671
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCancelable(Z)V

    .line 672
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2, p5}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showAvailabilityRestriction()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 642
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getAvailabilityRestriction()I

    move-result v1

    .line 643
    .local v1, restriction:I
    if-ne v1, v4, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "availability_restriction"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 652
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v2}, Lcom/google/android/finsky/utils/DocUtils;->getAvailabilityRestrictionResourceId(Lcom/google/android/finsky/api/model/Document;)I

    move-result v2

    const v3, 0x7f070197

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(III)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 654
    .local v0, dialog:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    const/4 v2, 0x4

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, p0, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 655
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCancelable(Z)V

    .line 656
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "availability_restriction"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showDocumentLoadError(Lcom/android/volley/VolleyError;)V
    .locals 4
    .parameter

    .prologue
    .line 947
    if-nez p1, :cond_0

    .line 948
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f070068

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 952
    :goto_0
    new-instance v1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->UNKNOWN:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    .line 953
    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    .line 954
    return-void

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showUpdateInstrumentScreen(Lcom/google/android/finsky/billing/Instrument;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V
    .locals 7
    .parameter "selectedInstrument"
    .parameter "rejectedInstrument"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/activities/UpdateInstrumentActivity;->createIntent(Ljava/lang/String;Lcom/google/android/finsky/billing/Instrument;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 538
    .local v6, intent:Landroid/content/Intent;
    const/16 v0, 0x21

    invoke-virtual {p0, v6, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 539
    return-void
.end method

.method private startOrResumePurchase()V
    .locals 13

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "offer_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1068
    .local v7, offerType:I
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-nez v0, :cond_0

    .line 1069
    new-instance v8, Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    sget-object v0, Lcom/google/android/finsky/config/G;->checkoutAuthTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v8, v1, v2, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 1071
    .local v8, authenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;
    new-instance v9, Lcom/google/android/finsky/billing/CheckoutPurchase;

    iget-object v10, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountQualifiedDfe:Lcom/google/android/finsky/api/DfeApi;

    new-instance v11, Lcom/google/android/finsky/billing/AsyncAuthenticator;

    invoke-direct {v11, v8}, Lcom/google/android/finsky/billing/AsyncAuthenticator;-><init>(Lcom/android/volley/toolbox/Authenticator;)V

    iget-object v12, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    new-instance v0, Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseStatusListener;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExternalReferrer:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContinueUrl:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseStatusListener;-><init>(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/PurchaseFragment$1;)V

    iget-object v6, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/finsky/billing/CheckoutPurchase;-><init>(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/billing/AsyncAuthenticator;Lcom/google/android/finsky/billing/InstrumentFactory;Lcom/google/android/finsky/billing/CheckoutPurchase$PurchaseStatusListener;Lcom/google/android/finsky/api/model/Document;I)V

    iput-object v9, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    .line 1079
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "checkout_purchase"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1081
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "checkout_purchase"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->resumeFromSavedState(Landroid/os/Bundle;)V

    .line 1083
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->restoreSelectedInstrumentAndBillingFlow()V

    .line 1088
    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->attach(Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;)V

    .line 1090
    .end local v8           #authenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;
    :cond_0
    return-void

    .line 1085
    .restart local v8       #authenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setIabParameters(Lcom/google/android/finsky/billing/IabParameters;)V

    .line 1086
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->prepare()V

    goto :goto_0
.end method

.method private updateButtons()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 1176
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1177
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentButton:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1178
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectInstrumentFamilyButton:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1179
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mWalletByline:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1181
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getLibrary()Lcom/google/android/finsky/library/Library;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1183
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->showAvailabilityRestriction()V

    .line 1234
    :goto_0
    return-void

    .line 1187
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isFreeUi()Z

    move-result v4

    .line 1188
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->hasAddInstrumentHintText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1189
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectInstrumentFamilyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1217
    :goto_1
    if-eqz v4, :cond_b

    .line 1218
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mWalletByline:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1190
    :cond_1
    iget v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 1191
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 1193
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1194
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->hasConfirmButtonText()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1195
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getConfirmButtonText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1203
    :goto_2
    if-eqz v4, :cond_6

    .line 1204
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isEveryTosAccepted()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 1196
    :cond_3
    if-eqz v4, :cond_4

    .line 1197
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    const v3, 0x7f0701a5

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 1199
    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v0

    const/16 v3, 0xf

    if-ne v0, v3, :cond_5

    const v0, 0x7f0701a6

    .line 1201
    :goto_3
    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 1199
    :cond_5
    const v0, 0x7f0701a4

    goto :goto_3

    .line 1206
    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v0

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v0, v3, :cond_8

    move v0, v1

    .line 1208
    :goto_4
    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/Instrument;->isValid()Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v1

    .line 1210
    :goto_5
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isInstrumentRequired()Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v3, :cond_a

    :cond_7
    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isEveryTosAccepted()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-nez v0, :cond_a

    :goto_6
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 1206
    goto :goto_4

    :cond_9
    move v3, v2

    .line 1208
    goto :goto_5

    :cond_a
    move v1, v2

    .line 1210
    goto :goto_6

    .line 1220
    :cond_b
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mWalletByline:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1221
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mWalletByline:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/activities/PurchaseFragment$9;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$9;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateSummaryAndFops()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1159
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-nez v0, :cond_0

    .line 1165
    :goto_0
    return-void

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V

    .line 1163
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->fillInTosses()V

    .line 1164
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V

    goto :goto_0
.end method

.method private updateUiFromInstrument()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1241
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1242
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateButtons()V

    .line 1243
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isFreeUi()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1244
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v0, v1, :cond_3

    move v0, v7

    .line 1246
    :goto_0
    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getFootnoteHtmlList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1248
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->setupFooters(Lcom/google/android/finsky/billing/Instrument;)V

    .line 1249
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/Instrument;->getCheckoutOption()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getFootnoteHtmlList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1253
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v0, :cond_4

    .line 1254
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    const v1, 0x7f070064

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->switchToLoading(I)V

    .line 1259
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDocumentDetailsViewBinder:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    iget v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mOfferType:I

    iget-object v6, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    if-eqz v6, :cond_5

    move v6, v7

    :goto_2
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->bind(Landroid/support/v4/app/FragmentManager;Landroid/view/ViewGroup;Lcom/google/android/finsky/api/model/Document;ILjava/util/List;Z)V

    .line 1261
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1264
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountNameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountNameView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1268
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isFreeUi()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isInstrumentRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->hasAddInstrumentHintText()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1270
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountPayWithView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1271
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountPanel:Lcom/google/android/finsky/layout/AccessibleLinearLayout;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/AccessibleLinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1277
    :goto_3
    return-void

    :cond_3
    move v0, v8

    .line 1244
    goto/16 :goto_0

    .line 1256
    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->showInstrumentAndPrice()V

    goto :goto_1

    :cond_5
    move v6, v8

    .line 1259
    goto :goto_2

    .line 1273
    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountPayWithView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1274
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountPanel:Lcom/google/android/finsky/layout/AccessibleLinearLayout;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070083

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/AccessibleLinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 410
    const v0, 0x7f0400d8

    return v0
.end method

.method public hideFragment(Landroid/support/v4/app/Fragment;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1576
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This should be handled by PurchaseFlowActivity"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hideProgress()V
    .locals 0

    .prologue
    .line 1602
    return-void
.end method

.method protected isDataReady()Z
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 690
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 691
    if-eqz p1, :cond_0

    .line 692
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    .line 694
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "iab_parameters"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "iab_parameters"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/IabParameters;

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    .line 697
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_direct_link_purchase"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 698
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_direct_link_purchase"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mIsDirectPurchase:Z

    .line 701
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "offer_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mOfferType:I

    .line 702
    if-eqz p1, :cond_3

    .line 703
    const-string v0, "last_selected_instrument_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLastSelectedInstrumentId:Ljava/lang/String;

    .line 705
    const-string v0, "selected_add_instrument_fam"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I

    .line 707
    const-string v0, "add_instrument_screen_shown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentScreenShown:Z

    .line 709
    const-string v0, "suppress_error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSuppressError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 710
    const-string v0, "finished_with_success"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithSuccess:Z

    .line 711
    const-string v0, "finished_with_error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 712
    const-string v0, "challenging"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mChallenging:Z

    .line 714
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_5

    .line 715
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->onDocumentLoaded(Lcom/google/android/finsky/api/model/Document;)V

    .line 743
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 744
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->rebindViews()V

    .line 746
    :cond_4
    :goto_1
    return-void

    .line 716
    :cond_5
    if-eqz p1, :cond_6

    const-string v0, "doc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 717
    const-string v0, "doc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->onDocumentLoaded(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_0

    .line 719
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->switchToLoadingImmediately()V

    .line 720
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithSuccess:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    if-eqz v0, :cond_8

    .line 721
    :cond_7
    const-string v0, "PurchaseFragment finished. Not initializing."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 724
    :cond_8
    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountQualifiedDfe:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    .line 725
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    new-instance v1, Lcom/google/android/finsky/activities/PurchaseFragment$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$3;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 735
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    new-instance v1, Lcom/google/android/finsky/activities/PurchaseFragment$4;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$4;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 1298
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1299
    const/16 v1, 0x1f

    if-ne p1, v1, :cond_1

    .line 1304
    new-instance v1, Lcom/google/android/finsky/activities/PurchaseFragment$10;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$10;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1311
    new-instance v1, Lcom/google/android/finsky/activities/PurchaseFragment$11;

    invoke-direct {v1, p0, p3}, Lcom/google/android/finsky/activities/PurchaseFragment$11;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1377
    :cond_0
    :goto_0
    return-void

    .line 1317
    :cond_1
    const/16 v1, 0x1e

    if-ne p1, v1, :cond_2

    if-ne p2, v2, :cond_2

    .line 1318
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setDevicePinAuthenticated()V

    .line 1319
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pinLock.purchase.complete?doc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    new-instance v1, Lcom/google/android/finsky/activities/PurchaseFragment$12;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$12;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1328
    :cond_2
    const/16 v1, 0x20

    if-ne p1, v1, :cond_4

    .line 1329
    if-ne p2, v2, :cond_3

    .line 1330
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->prepare()V

    goto :goto_0

    .line 1333
    :cond_3
    new-instance v1, Lcom/google/android/finsky/activities/PurchaseFragment$13;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$13;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1340
    :cond_4
    const/16 v1, 0x21

    if-ne p1, v1, :cond_5

    .line 1342
    new-instance v1, Lcom/google/android/finsky/activities/PurchaseFragment$14;

    invoke-direct {v1, p0, p3}, Lcom/google/android/finsky/activities/PurchaseFragment$14;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1348
    :cond_5
    const/16 v1, 0x22

    if-ne p1, v1, :cond_9

    .line 1349
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v1

    .line 1350
    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v1, v2, :cond_7

    .line 1351
    if-nez p2, :cond_6

    .line 1353
    new-instance v1, Lcom/google/android/finsky/activities/PurchaseFragment$15;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$15;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1362
    :cond_6
    iput-boolean v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mChallenging:Z

    .line 1363
    invoke-direct {p0, p3}, Lcom/google/android/finsky/activities/PurchaseFragment;->answerChallenge(Landroid/content/Intent;)V

    .line 1364
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->prepare()V

    goto/16 :goto_0

    .line 1365
    :cond_7
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v1, v0, :cond_0

    .line 1366
    iput-boolean v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mChallenging:Z

    .line 1367
    if-nez p2, :cond_8

    .line 1368
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->UNKNOWN:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    goto/16 :goto_0

    .line 1370
    :cond_8
    invoke-direct {p0, p3}, Lcom/google/android/finsky/activities/PurchaseFragment;->answerChallenge(Landroid/content/Intent;)V

    .line 1371
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->completeCheckoutPurchase()V

    goto/16 :goto_0

    .line 1375
    :cond_9
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onAddInstrument(IZ)V
    .locals 1
    .parameter "instrumentFamily"
    .parameter "isUserInitiatedEvent"

    .prologue
    .line 514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    .line 515
    iput p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I

    .line 516
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateButtons()V

    .line 517
    if-eqz p2, :cond_0

    .line 518
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment;->showAddInstrumentScreen(I)V

    .line 520
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "checkButton"
    .parameter "isChecked"

    .prologue
    .line 1735
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;

    .line 1736
    .local v0, tos:Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;
    invoke-virtual {v0, p2}, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;->setAcceptance(Z)V

    .line 1737
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V

    .line 1738
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 404
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onCreate(Landroid/os/Bundle;)V

    .line 405
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->setRetainInstance(Z)V

    .line 406
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1418
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDestroyView()V

    .line 1419
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mViewStates:Landroid/os/Bundle;

    .line 1420
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mViewStates:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->saveViewStates(Landroid/os/Bundle;)V

    .line 1421
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->onDestroyView()V

    .line 1423
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    .line 1425
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_1

    .line 1426
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->unregisterAll()V

    .line 1428
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_2

    .line 1429
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->unregisterAll()V

    .line 1431
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDocumentDetailsViewBinder:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->onDestroyView()V

    .line 1432
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDocumentDetailsViewBinder:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    .line 1433
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    .line 1434
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ObservableScrollView;->setOnScrollListener(Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;)V

    .line 1435
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    .line 1436
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsContainer:Landroid/view/ViewGroup;

    .line 1437
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    .line 1438
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLeadingStrip:Landroid/view/View;

    .line 1439
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    .line 1440
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountPanel:Lcom/google/android/finsky/layout/AccessibleLinearLayout;

    .line 1441
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountPayWithView:Landroid/view/View;

    .line 1442
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountNameView:Landroid/widget/TextView;

    .line 1443
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountSeparatorWrapper:Landroid/view/View;

    .line 1444
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountSeparator:Landroid/view/View;

    .line 1445
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseRow:Landroid/view/View;

    .line 1446
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseRowFooter:Landroid/view/View;

    .line 1447
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFooterContainer:Landroid/view/ViewGroup;

    .line 1448
    return-void
.end method

.method public onDownloadOk(Z)V
    .locals 5
    .parameter

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1726
    const-string v1, "Will download %s using wifi only = %b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1727
    if-nez p1, :cond_0

    .line 1728
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/finsky/receivers/Installer;->setMobileDataAllowed(Ljava/lang/String;)V

    .line 1730
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->continueCheckout()V

    .line 1731
    return-void
.end method

.method public onDownloadWifi()V
    .locals 2

    .prologue
    .line 1719
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1720
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 1721
    return-void
.end method

.method protected onInitViewBinders()V
    .locals 5

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "account"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 419
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "account"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    .line 420
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountQualifiedDfe:Lcom/google/android/finsky/api/DfeApi;

    .line 426
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDataView:Landroid/view/ViewGroup;

    .line 427
    .local v1, view:Landroid/view/View;
    new-instance v2, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;-><init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;)V

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    .line 428
    new-instance v2, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    invoke-direct {v2}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDocumentDetailsViewBinder:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    .line 429
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDynamicButtonContainer:Z

    .line 431
    const v2, 0x7f0801aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/ObservableScrollView;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    .line 433
    const v2, 0x7f0801ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsContainer:Landroid/view/ViewGroup;

    .line 435
    const v2, 0x7f0801b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFooterContainer:Landroid/view/ViewGroup;

    .line 436
    const v2, 0x7f08009a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    .line 437
    const v2, 0x7f080098

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLeadingStrip:Landroid/view/View;

    .line 439
    const v2, 0x7f0801b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/AccessibleLinearLayout;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountPanel:Lcom/google/android/finsky/layout/AccessibleLinearLayout;

    .line 440
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountPanel:Lcom/google/android/finsky/layout/AccessibleLinearLayout;

    const v3, 0x7f0801b9

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/AccessibleLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountPayWithView:Landroid/view/View;

    .line 441
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountPanel:Lcom/google/android/finsky/layout/AccessibleLinearLayout;

    const v3, 0x7f080110

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/AccessibleLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountNameView:Landroid/widget/TextView;

    .line 442
    const v2, 0x7f0801ba

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountSeparatorWrapper:Landroid/view/View;

    .line 443
    const v2, 0x7f0801bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountSeparator:Landroid/view/View;

    .line 445
    const v2, 0x7f0801b2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseRowFooter:Landroid/view/View;

    .line 446
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f0801ae

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    .line 447
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f0801af

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentButton:Landroid/widget/Button;

    .line 448
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f0801b0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectInstrumentFamilyButton:Landroid/widget/Button;

    .line 450
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f080049

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mWalletByline:Landroid/widget/TextView;

    .line 452
    iget-boolean v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDynamicButtonContainer:Z

    if-nez v2, :cond_0

    .line 453
    const v2, 0x7f0801ad

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseRow:Landroid/view/View;

    .line 454
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    new-instance v3, Lcom/google/android/finsky/activities/PurchaseFragment$2;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$2;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/ObservableScrollView;->setOnScrollListener(Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;)V

    .line 478
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mIsRetainedInstance:Z

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mViewStates:Landroid/os/Bundle;

    .line 479
    .local v0, savedState:Landroid/os/Bundle;
    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v2, p0, v3, v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->init(Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/billing/InstrumentFactory;Landroid/os/Bundle;)V

    .line 480
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDocumentDetailsViewBinder:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->init(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/os/Bundle;)V

    .line 482
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->bind(Landroid/view/ViewGroup;Lcom/google/android/finsky/billing/CheckoutPurchase;)V

    .line 483
    return-void

    .line 422
    .end local v0           #savedState:Landroid/os/Bundle;
    .end local v1           #view:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v2}, Lcom/google/android/finsky/api/DfeApi;->getApiContext()Lcom/google/android/finsky/api/DfeApiContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/api/DfeApiContext;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    .line 423
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccountQualifiedDfe:Lcom/google/android/finsky/api/DfeApi;

    goto/16 :goto_0

    .line 478
    .restart local v1       #view:Landroid/view/View;
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    goto :goto_1
.end method

.method public onInstrumentFamilySelected(I)V
    .locals 0
    .parameter "instrumentFamily"

    .prologue
    .line 677
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment;->showAddInstrumentScreen(I)V

    .line 678
    return-void
.end method

.method public onInstrumentSelected(Lcom/google/android/finsky/billing/Instrument;)V
    .locals 1
    .parameter "instrument"

    .prologue
    .line 497
    if-eqz p1, :cond_0

    .line 498
    invoke-virtual {p1}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLastSelectedInstrumentId:Ljava/lang/String;

    .line 500
    :cond_0
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    .line 501
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I

    .line 502
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V

    .line 503
    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 1818
    packed-switch p1, :pswitch_data_0

    .line 1836
    const-string v0, "Unknown alert id %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1839
    :goto_0
    return-void

    .line 1820
    :pswitch_0
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->SUBSCRIPTION_ALREADY_OWNED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    goto :goto_0

    .line 1824
    :pswitch_1
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->DOCUMENT_ALREADY_OWNED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    goto :goto_0

    .line 1828
    :pswitch_2
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->APP_ALREADY_INSTALLED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    goto :goto_0

    .line 1832
    :pswitch_3
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->DOCUMENT_UNAVAILABLE:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    goto :goto_0

    .line 1818
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onNothingSelected()V
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    .line 508
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I

    .line 509
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V

    .line 510
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 1795
    const-string v0, "docId_to_purchase"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1796
    packed-switch p1, :pswitch_data_0

    .line 1811
    const-string v0, "Unknown alert id %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1814
    :goto_0
    return-void

    .line 1798
    :pswitch_0
    invoke-static {v0}, Lcom/google/android/finsky/utils/DocUtils;->getSubscriptionAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1799
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->openDocument(Ljava/lang/String;)V

    .line 1800
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->SUBSCRIPTION_ALREADY_OWNED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    goto :goto_0

    .line 1805
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->openDocument(Ljava/lang/String;)V

    .line 1806
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->DOCUMENT_ALREADY_OWNED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    goto :goto_0

    .line 1796
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 755
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 756
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mViewStates:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 757
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mViewStates:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 759
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v1, :cond_1

    .line 760
    const-string v1, "doc"

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 761
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v1, :cond_1

    .line 762
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 763
    .local v0, savedPurchase:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->saveState(Landroid/os/Bundle;)V

    .line 764
    const-string v1, "checkout_purchase"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 767
    .end local v0           #savedPurchase:Landroid/os/Bundle;
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-eqz v1, :cond_2

    .line 768
    const-string v1, "selected_instrument_id"

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_2
    const-string v1, "last_selected_instrument_id"

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mLastSelectedInstrumentId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v1, "suppress_error"

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSuppressError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 772
    const-string v1, "add_instrument_screen_shown"

    iget-boolean v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentScreenShown:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 773
    const-string v1, "finished_with_success"

    iget-boolean v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithSuccess:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 774
    const-string v1, "finished_with_error"

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 775
    const-string v1, "selected_add_instrument_fam"

    iget v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 776
    const-string v1, "challenging"

    iget-boolean v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mChallenging:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 777
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 789
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onStart()V

    .line 790
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->attach(Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;)V

    .line 792
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->restoreSelectedInstrumentAndBillingFlow()V

    .line 794
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mIsRetainedInstance:Z

    .line 795
    return-void
.end method

.method public onStateChange(Lcom/google/android/finsky/billing/CheckoutPurchase;Lcom/google/android/finsky/billing/CheckoutPurchase$State;Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const v1, 0x7f07019a

    const/16 v5, 0x22

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1466
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithSuccess:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mFinishedWithError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    if-eqz v0, :cond_2

    .line 1467
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->switchToLoading(I)V

    .line 1468
    const-string v0, "Ignoring state change to %s, already finished."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1555
    :cond_1
    :goto_0
    return-void

    .line 1472
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1475
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p3, v0, :cond_8

    .line 1476
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getError()Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    move-result-object v1

    .line 1477
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v0

    .line 1478
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSuppressError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1480
    const-string v0, "Already handled %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1483
    :cond_3
    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSuppressError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 1484
    instance-of v2, v0, Lcom/android/volley/AuthFailureError;

    if-eqz v2, :cond_4

    .line 1485
    check-cast v0, Lcom/android/volley/AuthFailureError;

    .line 1486
    invoke-virtual {v0}, Lcom/android/volley/AuthFailureError;->getResolutionIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1487
    if-eqz v0, :cond_4

    .line 1488
    const-string v1, "Starting resolution intent."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1489
    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1494
    :cond_4
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p2, v0, :cond_7

    .line 1495
    iget-object v0, v1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->MIN_ADDRESS_PURCHASE_LIMIT_EXCEEDED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    if-ne v0, v2, :cond_6

    .line 1496
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getRejectedInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v0

    .line 1498
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->showUpdateInstrumentScreen(Lcom/google/android/finsky/billing/Instrument;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V

    .line 1552
    :cond_5
    :goto_1
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq p3, v0, :cond_1

    .line 1553
    iput-object v6, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSuppressError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    goto :goto_0

    .line 1502
    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->prepare()V

    .line 1503
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    invoke-static {v0, v6, v1, v3}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    goto :goto_1

    .line 1508
    :cond_7
    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    goto :goto_1

    .line 1510
    :cond_8
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p3, v0, :cond_a

    .line 1511
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p2, v0, :cond_9

    .line 1512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "viewPurchase?doc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->buildViewAnalyticsExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1514
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrerCookie:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    :cond_9
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->bind(Landroid/view/ViewGroup;Lcom/google/android/finsky/billing/CheckoutPurchase;)V

    .line 1517
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateSummaryAndFops()V

    goto :goto_1

    .line 1518
    :cond_a
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING_POLLING_STATUS:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p3, v0, :cond_b

    .line 1519
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->switchToLoading(I)V

    goto :goto_1

    .line 1520
    :cond_b
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p3, v0, :cond_c

    .line 1521
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithSuccess()V

    goto :goto_1

    .line 1522
    :cond_c
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq p3, v0, :cond_d

    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p3, v0, :cond_10

    .line 1524
    :cond_d
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mChallenging:Z

    if-nez v0, :cond_1

    .line 1527
    iput-boolean v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mChallenging:Z

    .line 1528
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->hasAddressChallenge()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1529
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1530
    const-string v1, "authAccount"

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/finsky/activities/AddressChallengeActivity;->getIntent(ILcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/google/android/finsky/activities/PurchaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1535
    :cond_e
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->hasAuthenticationChallenge()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1536
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1537
    const-string v1, "authAccount"

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/finsky/activities/AuthenticationChallengeActivity;->getIntent(ILcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/google/android/finsky/activities/PurchaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1542
    :cond_f
    const-string v0, "Unsupported challenge"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1543
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->UNKNOWN:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const/4 v2, -0x1

    const-string v3, "Unsupported challenge"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    goto/16 :goto_1

    .line 1546
    :cond_10
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq p3, v0, :cond_11

    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p3, v0, :cond_5

    .line 1547
    :cond_11
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p3, v0, :cond_12

    const v0, 0x7f070063

    .line 1549
    :goto_2
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentAndPriceViewBinder:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->switchToLoading(I)V

    .line 1550
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1547
    :cond_12
    const v0, 0x7f070064

    goto :goto_2
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->detach()V

    .line 784
    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onStop()V

    .line 785
    return-void
.end method

.method public persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter "bundle"
    .parameter "key"
    .parameter "fragment"

    .prologue
    .line 1586
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 1587
    return-void
.end method

.method public rebindActionBar()V
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 686
    :cond_0
    return-void
.end method

.method public rebindViews()V
    .locals 17

    .prologue
    .line 543
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 545
    .local v14, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v1, :cond_4

    .line 547
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v12

    .line 552
    .local v12, backend:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDynamicButtonContainer:Z

    if-eqz v1, :cond_5

    .line 553
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDataView:Landroid/view/ViewGroup;

    const v2, 0x7f0800b5

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 554
    .local v16, thumbnail:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v12}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getLargeDetailsIconWidth(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 564
    .end local v16           #thumbnail:Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAcquireButton:Landroid/widget/Button;

    new-instance v2, Lcom/google/android/finsky/activities/PurchaseFragment$BuyButtonClickListener;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/google/android/finsky/activities/PurchaseFragment$BuyButtonClickListener;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/activities/PurchaseFragment$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAddInstrumentButton:Landroid/widget/Button;

    new-instance v2, Lcom/google/android/finsky/activities/PurchaseFragment$AddInstrumentButtonListener;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/google/android/finsky/activities/PurchaseFragment$AddInstrumentButtonListener;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/activities/PurchaseFragment$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectInstrumentFamilyButton:Landroid/widget/Button;

    new-instance v2, Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/activities/PurchaseFragment$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->updateButtons()V

    .line 570
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v11

    .line 572
    .local v11, accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v1, v11}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 587
    const v2, 0x7f070147

    const v3, 0x7f070149

    const v4, 0x7f070197

    const/4 v5, 0x1

    const-string v6, "already_owned_document"

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/finsky/activities/PurchaseFragment;->showAlreadyOwnedDialog(IIIILjava/lang/String;)V

    .line 598
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-nez v1, :cond_3

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/activities/BinderFactory;->getSummaryViewBinder(Lcom/google/android/finsky/api/model/DfeToc;ILandroid/accounts/Account;)Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    .line 602
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->hideDynamicFeatures()V

    .line 603
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mOfferType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mOfferType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 605
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    const v2, 0x7f020061

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->setBadgeOverride(I)V

    .line 607
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mReferrer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mExternalReferrer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContinueUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mIsDirectPurchase:Z

    move-object/from16 v5, p0

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/fragments/PageFragment;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 610
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V

    .line 612
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->rebindActionBar()V

    .line 615
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v13

    .line 617
    .local v13, backendHintColor:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDataView:Landroid/view/ViewGroup;

    const v2, 0x7f080098

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 618
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseRowFooter:Landroid/view/View;

    invoke-virtual {v1, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 620
    .end local v11           #accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    .end local v12           #backend:I
    .end local v13           #backendHintColor:I
    :cond_4
    return-void

    .line 557
    .restart local v12       #backend:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 560
    invoke-static {v12}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusDetailsLayoutResource(I)I

    move-result v15

    .line 561
    .local v15, summaryLayoutId:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/PurchaseFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v14, v15, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 575
    .end local v15           #summaryLayoutId:I
    .restart local v11       #accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    :sswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->checkForInstallationState()V

    goto/16 :goto_1

    .line 578
    :sswitch_1
    const v2, 0x7f070146

    const v3, 0x7f070149

    const v4, 0x7f070197

    const/4 v5, 0x2

    const-string v6, "already_owned_subscription"

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/finsky/activities/PurchaseFragment;->showAlreadyOwnedDialog(IIIILjava/lang/String;)V

    goto/16 :goto_1

    .line 573
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xf -> :sswitch_1
    .end sparse-switch
.end method

.method protected requestData()V
    .locals 0

    .prologue
    .line 800
    return-void
.end method

.method public restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter "bundle"
    .parameter "key"

    .prologue
    .line 1591
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public setPurchaseFragmentListener(Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 492
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment;->mListener:Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;

    .line 493
    return-void
.end method

.method public showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V
    .locals 3
    .parameter "fragment"
    .parameter "tag"

    .prologue
    .line 1565
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1566
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1567
    .local v1, prev:Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 1568
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1570
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1571
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1572
    return-void
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;IZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1560
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This should be handled by PurchaseFlowActivity"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showProgress(I)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 1597
    return-void
.end method
