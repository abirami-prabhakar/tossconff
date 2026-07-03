# Tossconf26 இணையதளம் மூல நிரல்

## எப்படி பங்களிப்பது

இந்த ரெப்பாசிட்டரியின் ரூட் டைரக்கரியில் இருந்து டெர்மினல் வழியாக

```console
python3 -m http.server
```

என்ற கமாண்டை இயக்கிவிட்டு, உங்கள் இணையஉலவியில் (Browser) http://localhost:8000 என்ற முகவரியை அனுகினால் நீங்கள் மாற்றம் செய்யும் `TossConf26` இணையதளம் தெரியும். 

### Using Nix (நிக்ஸ் மூலம்)

[For Users (பயனர்களுக்கு)] If you have Nix installed, you can start the local development web server on port 8000 with a single command without even cloning the repository manually: (நிக்ஸ் மென்பொருள் நிறுவப்பட்டிருந்தால், மூல நிரலை தரவிறக்கம் செய்யாமலேயே கீழே உள்ள ஒற்றை கமாண்டை பயன்படுத்தி லோக்கல் வெப் சர்வரை 8000 போர்ட்டில் இயக்கலாம்:)

```console
nix run github:tossconf/TossConf26
```

[For Developers (மேம்படுத்துபவர்களுக்கு)] If you have already cloned this repository, you can simply run: (அல்லது நீங்கள் ஏற்கனவே இந்த ரெப்பாசிட்டரியை குளோன் செய்திருந்தால், இதனை இயக்கலாம்:)

```console
nix run .
```

The server will automatically run and be available at **http://localhost:8000**. (சர்வர் தானாகவே இயங்கி **http://localhost:8000** என்ற முகவரியில் கிடைக்கும்.)

[For maintainers verifying PR (பராமரிப்பாளர்கள் PR-ஐ சரிபார்க்க)] You can easily verify a Pull Request without running `git fetch` or `git pull` by executing a single command pointing directly to the PR: (புல் ரெக்வெஸ்ட்களை (PR) லோக்கலில் டவுன்லோட் செய்யாமலேயே சரிபார்க்க, அந்த PR எண்ணை வைத்து நேரடியாக சர்வரை இயக்கலாம்:)

```console
nix run github:tossconf/TossConf26/pull/<PR_NUMBER>/head
```
