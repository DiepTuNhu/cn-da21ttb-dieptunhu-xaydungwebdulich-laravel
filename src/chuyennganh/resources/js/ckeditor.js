import ClassicEditor from '@ckeditor/ckeditor5-build-classic';
import { PremiumFeatures } from 'ckeditor5-premium-features';

ClassicEditor
    .create(document.querySelector('#description'), {
        plugins: [PremiumFeatures], // Thêm plugin Premium Features
        toolbar: ['heading', '|', 'bold', 'italic', 'link', '|', 'undo', 'redo'],
        premiumFeatures: {
            licenseKey: 'YOUR_LICENSE_KEY' // Thay bằng license của bạn
        }
    })
    .then(editor => {
        console.log('Editor initialized successfully:', editor);
    })
    .catch(error => {
        console.error('There was a problem initializing the editor:', error);
    });
